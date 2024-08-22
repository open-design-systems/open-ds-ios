//
//  Typography.swift
//  
//
//  Created by Ricardo Rachaus on 25/07/24.
//

import Foundation

public struct Typography: MetaInformationProtocol {
    public let meta: MetaInformation
    public let fontFamily: String
    public let fontSize: String
    public let fontWeight: Int
    public let lineHeight: String
    public let letterSpacing: CGFloat
    
    public init(
        meta: MetaInformation,
        fontFamily: String,
        fontSize: String,
        fontWeight: Int,
        lineHeight: String,
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
