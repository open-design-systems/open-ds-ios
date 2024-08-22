//
//  DesignSystem.swift
//
//
//  Created by Ricardo Rachaus on 25/07/24.
//

import Foundation

public struct DesignSystem: MetaProtocol {
    public let meta: Meta
    public let colors: [String: Color]
    public let spacing: [String: Spacing]
    public let surface: [String: Surface]
    public let typography: [String: Typography]
    public let shadows: [String: Shadow]

    public init(
        meta: Meta,
        colors: [String : Color],
        spacing: [String : Spacing],
        surface: [String : Surface],
        typography: [String : Typography],
        shadows: [String : Shadow]
    ) {
        self.meta = meta
        self.colors = colors
        self.spacing = spacing
        self.surface = surface
        self.typography = typography
        self.shadows = shadows
    }
}
