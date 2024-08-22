//
//  OpenSurface.swift
//
//
//  Created by Ricardo Rachaus on 25/07/24.
//

import Foundation

public struct OpenSurface: OpenTypeProtocol {
    public let meta: MetaInformation
    public let borderColor: RefInformation
    public let borderRadius: CGFloat
    public let borderWidth: CGFloat
    public let boxShadow: RefInformation
    public let backgroundColor: RefInformation

    public init(
        meta: MetaInformation,
        borderColor: RefInformation,
        borderRadius: CGFloat,
        borderWidth: CGFloat,
        boxShadow: RefInformation,
        backgroundColor: RefInformation
    ) {
        self.meta = meta
        self.borderColor = borderColor
        self.borderRadius = borderRadius
        self.borderWidth = borderWidth
        self.boxShadow = boxShadow
        self.backgroundColor = backgroundColor
    }
}
