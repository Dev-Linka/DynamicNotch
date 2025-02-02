//
// Created by S7epz on 17/01/25.
// Copyright © 2025 ACME.
// All Rights Reserved.


import SwiftUI

@main
struct DynamicNotchApp: App {
    @State private var dynamicIslandWindow: DynamicIslandPanel?
    @State private var transparent: Bool = true
    
    var body: some Scene {
        WindowGroup {
            Settings(transparent: $transparent)
                .onAppear {
                    showDynamicIsland()
                }
        }
    }

    func showDynamicIsland() {
        let island = DynamicIslandPanel() // put the panel into a var
        island.contentView = NSHostingView(rootView: DynamicIslandView(transparent: $transparent))
        island.orderFront(nil)
        dynamicIslandWindow = island
    }
}

