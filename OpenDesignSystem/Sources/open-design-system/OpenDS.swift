//
//  OpenDS.swift
//
//
//  Created by Ricardo Rachaus on 22/08/24.
//

import Foundation
import ArgumentParser

@main
struct OpenDS: ParsableCommand {

    @Option(name: .shortAndLong, help: "The path for the file with the token")
    var path: String = "."

    @Option(name: .shortAndLong, help: "The output path for the file to be written")
    var output: String = "."

    mutating func run() throws {
        _ = ModelGenerator(jsonPath: path, outputPath: output)
    }

}
