//
//  Meta.swift
//  
//
//  Created by Ricardo Rachaus on 13/07/24.
//

import Foundation

public protocol OpenTypeProtocol: Decodable {
    var meta: OpenType { get }
}

public struct OpenType: Decodable {
    public let id: String
    public let name: String
    public let description: String

    public init(id: String, name: String, description: String) {
        self.id = id
        self.name = name
        self.description = description
    }
}
