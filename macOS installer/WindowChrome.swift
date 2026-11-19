//
//  WindowChrome.swift
//  macOS installer
//

import AppKit
import SwiftUI

private struct WindowChromeConfigurator: NSViewRepresentable {
    func makeNSView(context: Context) -> NSView {
        let view = NSView()
        DispatchQueue.main.async { [weak view] in
            guard let window = view?.window else { return }
            configure(window)
        }
        return view
    }

    func updateNSView(_ nsView: NSView, context: Context) {}

    private func configure(_ window: NSWindow) {
        window.titleVisibility = .hidden
        window.titlebarAppearsTransparent = true
        window.styleMask.insert(.fullSizeContentView)
        window.isMovableByWindowBackground = true
        window.toolbar = NSToolbar(identifier: "MainWindowToolbar")
        window.toolbarStyle = .unified
    }
}

extension View {
    func hiddenTitlebarWithInsetTrafficLights() -> some View {
        background(WindowChromeConfigurator())
    }
}
