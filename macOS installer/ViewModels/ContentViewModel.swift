//
//  ContentViewModel.swift
//  macOS installer
//

import Observation

@Observable
final class ContentViewModel {
    private(set) var greeting: Greeting

    init(greeting: Greeting = .default) {
        self.greeting = greeting
    }

    var symbolName: String { greeting.symbolName }
    var message: String { greeting.message }
}
