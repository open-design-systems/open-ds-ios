//
//  Color.swift
//
//
//  Created by Ricardo Rachaus on 13/07/24.
//

import Foundation

public struct OpenColor: MetaProtocol {
    public let meta: Meta
    public let light: ColorData
    public let dark: ColorData

    public init(meta: Meta, light: ColorData, dark: ColorData) {
        self.meta = meta
        self.light = light
        self.dark = dark
    }
}

public struct ColorData: Decodable {
    public let hex: String
    public let rgba: RGBAColor

    public init(hex: String, rgba: RGBAColor) {
        self.hex = hex
        self.rgba = rgba
    }
}

public struct RGBAColor: Decodable {
    public let red: Int
    public let green: Int
    public let blue: Int
    public let alpha: Int

    public init(red: Int, green: Int, blue: Int, alpha: Int) {
        self.red = red
        self.green = green
        self.blue = blue
        self.alpha = alpha
    }
}
