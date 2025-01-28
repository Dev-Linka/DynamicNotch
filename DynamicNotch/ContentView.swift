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

struct Settings: View{
    @State var tap: Bool = false
    
    var body: some View {
        
        
        
        HStack{
            
            VStack{
                Button(action: {
                    
                }){
                    Image(systemName: "gear")
                    Text("Settings")
                    
                        .padding(
                            [.trailing], 30
                        )
                        .padding(
                            [.vertical], 10
                        )
                        
                        
                    
                }
                .buttonStyle(PlainButtonStyle())
                
                //.buttonStyle(.borderedProminent)
                //.tint(.green)
                 
                
                
                
                
            }
            
            
            Spacer()
            
            
            VStack{
                
                    VStack{
                        GeometryReader{ geometry in
                            Rectangle()
                                .frame(width: geometry.size.width * 1, height: geometry.size.height * 1, alignment: .trailing)
                                .foregroundColor(Color.black.opacity(0.1))
                                .cornerRadius(20)
                                .scaledToFit()
                        
                    }
                }.edgesIgnoringSafeArea(.all)
                
                    
                    
            }
            
                
            
        }
        .padding()
        .frame(minWidth: 620, minHeight: 420)
    }
}

#Preview {
    ContentView()
}
