//
//  Surface.swift
//
//
//  Created by Ricardo Rachaus on 25/07/24.
//

import Foundation

public struct Surface: MetaInformationProtocol {
    public let meta: MetaInformation
    public let borderColor: String
    public let borderRadius: CGFloat
    public let borderWidth: CGFloat
    public let boxShadow: String
    public let backgroundColor: String

    public init(
        meta: MetaInformation,
        borderColor: String,
        borderRadius: CGFloat,
        borderWidth: CGFloat,
        boxShadow: String,
        backgroundColor: String
    ) {
        self.meta = meta
        self.borderColor = borderColor
        self.borderRadius = borderRadius
        self.borderWidth = borderWidth
        self.boxShadow = boxShadow
        self.backgroundColor = backgroundColor
    }
}
