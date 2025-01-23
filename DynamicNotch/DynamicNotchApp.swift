//
// Created by S7epz on 17/01/25.
// Copyright © 2025 ACME.
// All Rights Reserved.


import SwiftUI

@main
struct DynamicNotchApp: App {
    var body: some Scene {
        WindowGroup {
            Settings()
            
                .onAppear {
                    if let window = NSApplication.shared.windows.first{
                        window.setContentSize(NSSize(width: 620, height: 440))
                    }
                    
                }
        }
    }
}
