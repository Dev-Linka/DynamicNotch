//
// Created by S7epz on 17/01/25.
// Copyright © 2025 ACME.
// All Rights Reserved.


import SwiftUI

enum SideBarItem: String, Identifiable, CaseIterable{
    var id: String { rawValue }
    
    case settings
}

struct ContentView: View {
    @State var sideBarVisibility: NavigationSplitViewVisibility = .doubleColumn
    @State var selectedSideBarItem: SideBarItem = .settings
    
    var screen = NSScreen.main?.visibleFrame
    
    var body: some View {
        /*
        NavigationSplitView(columnVisibility: $sideBarVisibility){
            List(SideBarItem.allCases, selection: $selectedSideBarItem){ item in
                NavigationLink(
                    item.rawValue.localizedCapitalized,
                    value: item
                )
            }
        } detail: {
            switch selectedSideBarItem {
            case .settings:
                Settings()
            }
        }
        */
        VStack{
            Image(systemName: "globe")
            Text("Hello world")
            
        }
        .padding()
        
    }
}



#Preview {
    ContentView()
}
