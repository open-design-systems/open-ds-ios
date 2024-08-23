//
//  ModelGenerator.swift
//
//
//  Created by Ricardo Rachaus on 03/08/24.
//

import Foundation

private var designSystem: OpenDesignSystem!

public func generate(resourcePath: String, outputPath: String, outputFileName: String) {
    do {
        let contents = try Data(contentsOf: URL(fileURLWithPath: resourcePath))
        designSystem = try JSONDecoder().decode(OpenDesignSystem.self, from: contents)
    } catch {
        return print("Error reading file: \(error)")
    }

    var output = "import SwiftUI\n\n"
    output += generateColors() + "\n\n"
    output += generateSpacing() + "\n\n"
    output += generateTypography() + "\n\n"
    output += generateSurface() + "\n\n"
    output += generateShadow() + "\n\n"
    do {
        try output.write(toFile: outputPath + "/" + outputFileName, atomically: true, encoding: .utf8)
        print("File generated at path: \(outputPath + "/" + outputFileName)!")
    } catch {
        print(error.localizedDescription)
    }
}

private func generateColors() -> String {
    let lightPrefix = "Light"
    let darkPrefix = "Dark"

    var attributes = ""
    for color in designSystem.colors {
        let rgbaLight = color.value.light.rgba
        let rgbaDark = color.value.dark.rgba
        let lightColorKey = color.key + lightPrefix
        let darkColorKey = color.key + darkPrefix
        attributes += "    static let \(lightColorKey): Color = Color(.sRGB, red: \(Double(rgbaLight.red) / 255), green: \(Double(rgbaLight.green) / 255), blue: \(Double(rgbaLight.blue) / 255), opacity: \(Double(rgbaLight.alpha) / 255))\n"
        attributes += "    static let \(darkColorKey): Color = Color(.sRGB, red: \(Double(rgbaDark.red) / 255), green: \(Double(rgbaDark.green) / 255), blue: \(Double(rgbaDark.blue) / 255), opacity: \(Double(rgbaDark.alpha) / 255))\n"
        attributes += "    static var \(color.key): Color { isLightMode ? \(lightColorKey) : \(darkColorKey) } \n"
    }

    return "enum OpenColors {\n\(isLightModeProperty())\n\(attributes)}"
}

private func isLightModeProperty() -> String {
    "\n    private static var isLightMode: Bool { UIScreen.main.traitCollection.userInterfaceStyle == .light }\n"
}

private func generateSpacing() -> String {
    var attributes = ""
    for spacing in designSystem.spacing {
        attributes += "    static let \(spacing.key): CGFloat = \(spacing.value.value)\n"
    }
    return "enum OpenSpacing {\n\(attributes)}"
}

private func generateTypography() -> String {
    var attributes = ""
    for typography in designSystem.typography {
        let value = typography.value
        attributes += "    static let \(typography.key): UIFont = UIFont(name: \"\(value.fontFamily + weight(for: value.fontWeight))\", size: \(value.fontSize))!\n"
    }
    return "enum OpenTypography {\n\(attributes)}"
}

private func generateSurface() -> String {
    var attributes = ""
    for surface in designSystem.surface {
        let value = surface.value
        attributes += "    static let \(surface.key): Surface = Surface(borderColor: \(reference(to: value.borderColor.ref)), borderRadius: \(value.borderRadius), borderWidth: \(value.borderWidth), boxShadow: \(reference(to: value.boxShadow.ref)), backgroundColor: \(reference(to: value.backgroundColor.ref)))\n"
    }
    return surfaceType() + "\n\nenum OpenSurface {\n\(attributes)}"
}

private func generateShadow() -> String {
    var attributes = ""
    for shadow in designSystem.shadows {
        let value = shadow.value
        attributes += "    static let \(shadow.key): Shadow = Shadow(elevation: \(value.elevation), shadowColor: \(reference(to: value.shadowColor.ref)), shadowOpacity: \(value.shadowOpacity), shadowOffset: CGSize(width: \(value.shadowOffset.width), height: \(value.shadowOffset.width)), shadowRadius: \(value.shadowRadius))\n"
    }
    return shadowType() + "\n\nenum OpenShadows {\n\(attributes)}"
}

private func weight(for value: Int) -> String {
    switch value {
    case 100: "Thin"
    case 200: "ExtraLight"
    case 300: "Light"
    case 400: "Regular"
    case 500: "Medium"
    case 600: "SemiBold"
    case 700: "Bold"
    case 800: "ExtraBold"
    case 900: "Black"
    default: "Regular"
    }
}

private func surfaceType() -> String {
"""
public struct Surface {
    public let borderColor: Color
    public let borderRadius: CGFloat
    public let borderWidth: CGFloat
    public let boxShadow: Shadow
    public let backgroundColor: Color

    public init(borderColor: Color, borderRadius: CGFloat, borderWidth: CGFloat, boxShadow: Shadow, backgroundColor: Color) {
        self.borderColor = borderColor
        self.borderRadius = borderRadius
        self.borderWidth = borderWidth
        self.boxShadow = boxShadow
        self.backgroundColor = backgroundColor
    }
}
"""
}

private func shadowType() -> String {
"""
public struct Shadow {
    public let elevation: CGFloat
    public let shadowColor: Color
    public let shadowOpacity: CGFloat
    public let shadowOffset: CGSize
    public let shadowRadius: CGFloat

    public init(
        elevation: CGFloat,
        shadowColor: Color,
        shadowOpacity: CGFloat,
        shadowOffset: CGSize,
        shadowRadius: CGFloat
    ) {
        self.elevation = elevation
        self.shadowColor = shadowColor
        self.shadowOpacity = shadowOpacity
        self.shadowOffset = shadowOffset
        self.shadowRadius = shadowRadius
    }
}
"""
}

private func reference(to referenceToken: String) -> String {
    let components = referenceToken.split(separator: ".")
    guard let type = components.first, let token = components.last else { return "" }
    switch type {
    case "colors":
        return "OpenColors.\(token)"
    case "shadows":
        return "OpenShadows.\(token)"
    case "spacing":
        return "OpenSpacing.\(token)"
    case "surface":
        return "OpenSurface.\(token)"
    case "typography":
        return "OpenTypography.\(token)"
    default:
        return ""
    }
}

private func referenceType(to type: String) -> String {
    switch type {
    case "colors":
        return "Color"
    case "shadows":
        return "Shadow"
    case "spacing":
        return "CGFloat"
    case "surface":
        return "Surface"
    case "typography":
        return "UIFont"
    default:
        return ""
    }
}
