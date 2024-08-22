//
//  RefInformation.swift
//
//
//  Created by Ricardo Rachaus on 13/08/24.
//

import Foundation

public struct RefInformation: Decodable {
    public let ref: String
    public let type: String

    public init(ref: String, type: String) {
        self.ref = ref
        self.type = type
    }

    enum CodingKeys: String, CodingKey {
        case ref = "$ref"
        case type = "$refType"
    }
}
