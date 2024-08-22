//
//  OpenTypography.swift
//
//
//  Created by Ricardo Rachaus on 25/07/24.
//

import Foundation

public struct OpenTypography: OpenTypeProtocol {
    public let meta: MetaInformation
    public let fontFamily: String
    public let fontSize: Int
    public let fontWeight: Int
    public let lineHeight: Int
    public let letterSpacing: CGFloat
    
    public init(
        meta: MetaInformation,
        fontFamily: String,
        fontSize: Int,
        fontWeight: Int,
        lineHeight: Int,
        letterSpacing: CGFloat
    ) {
        self.meta = meta
        self.fontFamily = fontFamily
        self.fontSize = fontSize
        self.fontWeight = fontWeight
        self.lineHeight = lineHeight
        self.letterSpacing = letterSpacing
    }
}
