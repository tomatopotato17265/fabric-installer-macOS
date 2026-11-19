//
//  Greeting.swift
//  macOS installer
//

import Foundation

struct Greeting: Equatable {
    var symbolName: String
    var message: String

    static let `default` = Greeting(symbolName: "globe", message: "Hello, world!")
}
