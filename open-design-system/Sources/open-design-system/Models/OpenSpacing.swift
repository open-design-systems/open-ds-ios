//
//  Spacing.swift
//
//
//  Created by Ricardo Rachaus on 25/07/24.
//

import Foundation

public struct OpenSpacing: OpenTypeProtocol {
    public let value: CGFloat
    public var meta: MetaInformation

    public init(value: CGFloat, meta: MetaInformation) {
        self.value = value
        self.meta = meta
    }
}
