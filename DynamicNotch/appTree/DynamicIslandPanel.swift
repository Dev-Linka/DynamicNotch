//
// Created by S7epz on 01/02/25.
// Copyright © 2025 ACME.
// All Rights Reserved.



import Cocoa
import SwiftUI

class DynamicIslandPanel: NSPanel { // NSPanel for non-primary content
    init() { // Init for setup
        let screen = NSScreen.main! // ! for assuming the screen is always available
        let screenFrame = screen.frame // taking full frame
        let visibleFrame = screen.visibleFrame // taking visible frame

        // Calculate notch position
        let menuBarHeight = screenFrame.height - visibleFrame.maxY
        let notchY = screenFrame.height - menuBarHeight - 10
        let notchX = (visibleFrame.width / 2) - 150

        let panelRect = NSRect(x: notchX, y: notchY, width: 300, height: 60)

        super.init(
            contentRect: panelRect,
            styleMask: [.nonactivatingPanel, .hudWindow],
            backing: .buffered,
            defer: false
        )

        self.isOpaque = true
        self.backgroundColor = .clear
        self.isMovable = false
        self.hasShadow = false
        self.level = .floating // above other windows
        self.collectionBehavior = [.canJoinAllSpaces, .fullScreenAuxiliary]
        
    }
}

