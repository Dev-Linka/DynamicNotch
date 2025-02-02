//
// Created by S7epz on 01/02/25.
// Copyright © 2025 ACME.
// All Rights Reserved.



import Cocoa // Framework for API's, windows... traditional AppKit
import SwiftUI

class WindowController: NSWindowController { // NSWindowController for windows control
    convenience init<Content: View>(view: Content) {
        let hostingView = NSHostingView(rootView: view)
        let window = NSWindow(
            contentRect: NSRect(x: 600, y: 400, width: 300, height: 200),
            styleMask: [.titled, .closable, .resizable],
            backing: .buffered,
            defer: false
        )
        window.contentView = hostingView
        window.makeKeyAndOrderFront(nil)

        self.init(window: window)
    }
}
