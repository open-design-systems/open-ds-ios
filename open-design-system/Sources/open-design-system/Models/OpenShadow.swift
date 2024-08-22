//
//  Shadow.swift
//
//
//  Created by Ricardo Rachaus on 13/07/24.
//

import Foundation

public struct OpenShadow: OpenTypeProtocol {
    public let meta: MetaInformation
    public let elevation: CGFloat
    public let shadowColor: String
    public let shadowOpacity: CGFloat
    public let shadowOffset: ShadowOffset
    public let shadowRadius: CGFloat

    public init(
        meta: MetaInformation,
        elevation: CGFloat,
        shadowColor: String,
        shadowOpacity: CGFloat,
        shadowOffset: ShadowOffset,
        shadowRadius: CGFloat
    ) {
        self.meta = meta
        self.elevation = elevation
        self.shadowColor = shadowColor
        self.shadowOpacity = shadowOpacity
        self.shadowOffset = shadowOffset
        self.shadowRadius = shadowRadius
    }
}

public struct ShadowOffset: Decodable {
    public let width: CGFloat
    public let height: CGFloat

    public init(width: CGFloat, height: CGFloat) {
        self.width = width
        self.height = height
    }
}
