//
// Created by S7epz on 17/01/25.
// Copyright © 2025 ACME.
// All Rights Reserved.


import SwiftUI

@main
struct DynamicNotchApp: App {
    @State private var dynamicIslandWindow: DynamicIslandPanel?

    var body: some Scene {
        WindowGroup {
            Settings()
                .onAppear {
                    showDynamicIsland()
                }
        }
    }

    func showDynamicIsland() {
        let island = DynamicIslandPanel()
        island.contentView = NSHostingView(rootView: DynamicIslandView())
        island.orderFront(nil)
        dynamicIslandWindow = island
    }
}

