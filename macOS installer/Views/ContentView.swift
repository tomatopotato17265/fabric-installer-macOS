//
//  ContentView.swift
//  macOS installer
//

import SwiftUI

struct ContentView: View {
    @State private var viewModel: ContentViewModel

    init(viewModel: ContentViewModel = ContentViewModel()) {
        _viewModel = State(initialValue: viewModel)
    }

    var body: some View {
        VStack {
            Image(systemName: viewModel.symbolName)
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text(viewModel.message)
        }
        .padding()
    }
}

#Preview {
    ContentView(viewModel: ContentViewModel(greeting: .default))
}
