//
// Created by S7epz on 17/01/25.
// Copyright © 2025 ACME.
// All Rights Reserved.


import SwiftUI

struct ContentView: View {
    @State private var goToPage = false
    @Environment(\.openWindow) private var openWindow
    @Environment(\.supportsMultipleWindows) private var supportsMultipleWindows
    
    var body: some View {
        
        HStack{
            
            VStack {
                Button(action: {
                    goToPage = true
                }){
                    Text("Click Me!")
                }
            }
            .navigationTitle("HI")
            .padding()
        }
        
        
    }
}

#Preview {
    ContentView()
}
