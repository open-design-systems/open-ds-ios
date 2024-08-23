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

    @Option(name: .shortAndLong, help: "The path for the resource file with the tokens.")
    var resourcePath: String = "."

    @Option(name: .shortAndLong, help: "The output path for the file to be written with the generated code.")
    var outputPath: String = "."

    @Option(name: .shortAndLong, help: "The output name for the file to be written with the generated code. If nothings is passed it will be called Generated.swift as default.")
    var fileName: String = "Generated.swift"

    mutating func run() throws {
        generate(resourcePath: resourcePath, outputPath: outputPath, outputFileName: fileName)
    }

}
