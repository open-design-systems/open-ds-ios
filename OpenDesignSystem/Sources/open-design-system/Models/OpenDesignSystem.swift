//
//  Color.swift
//
//
//  Created by Ricardo Rachaus on 13/07/24.
//

public struct OpenDesignSystem: OpenTypeProtocol {
    public let meta: MetaInformation
    public let colors: [String: OpenColor]
    public let spacing: [String: OpenSpacing]
    public let surface: [String: OpenSurface]
    public let typography: [String: OpenTypography]
    public let shadows: [String: OpenShadow]

    public init(
        meta: MetaInformation,
        colors: [String : OpenColor],
        spacing: [String : OpenSpacing],
        surface: [String : OpenSurface],
        typography: [String : OpenTypography],
        shadows: [String : OpenShadow]
    ) {
        self.meta = meta
        self.colors = colors
        self.spacing = spacing
        self.surface = surface
        self.typography = typography
        self.shadows = shadows
    }
}
