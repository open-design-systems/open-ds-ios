//
//  File.swift
//  
//
//  Created by Ricardo Rachaus on 03/08/24.
//

import Foundation

public class ModelGenerator {

    private let designSystem: DesignSystem

    public init(designSystem: DesignSystem) {
        self.designSystem = designSystem
    }

    public func generate() {

    }

    private func generateColors() {
        var attributes = ""
        for color in designSystem.colors {
            attributes += "    var \(color.key)"
        }
    }

}
