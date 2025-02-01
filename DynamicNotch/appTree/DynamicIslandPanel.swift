//
// Created by S7epz on 01/02/25.
// Copyright © 2025 ACME.
// All Rights Reserved.



import Cocoa
import SwiftUI

class DynamicIslandPanel: NSPanel {
    init() {
        let screen = NSScreen.main!
        let screenFrame = screen.frame
        let visibleFrame = screen.visibleFrame

        // Calculate notch position
        let notchHeight = screenFrame.height - visibleFrame.height
        let notchY = screenFrame.height - notchHeight / 2
        let notchX = screenFrame.width / 2 - 50

        let panelRect = NSRect(x: notchX, y: notchY, width: 120, height: 50)

        super.init(
            contentRect: panelRect,
            styleMask: [.nonactivatingPanel, .hudWindow],
            backing: .buffered,
            defer: false
        )

        self.isOpaque = false
        self.backgroundColor = .clear
        self.isMovable = false
        self.hasShadow = false
        self.level = .floating
        self.collectionBehavior = [.canJoinAllSpaces, .fullScreenAuxiliary]
    }
}

