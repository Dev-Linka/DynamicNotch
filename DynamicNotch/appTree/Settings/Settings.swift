//
// Created by S7epz on 28/01/25.
// Copyright © 2025 ACME.
// All Rights Reserved.

import SwiftUI

struct Settings: View{
     
    var window = NSScreen.main?.visibleFrame
    @State var selected: String = "Settings"
    @Namespace var animation
    
    
    var body: some View {
        
        VStack{
            
            HStack{
                
                VStack(spacing: 20){
                    
                    HStack{
                        
                        Text("Dynamic Notch")
                        Spacer()
                    }
                    .padding(.top, 25)
                    
                    //Button for navigation
                    
                        TabButton(image: "gear", title: "Settings", selected: $selected, animation: animation)
                        
                        TabButton(image: "globe", title: "About", selected: $selected, animation: animation)
                }
                
            }.frame(width: 200)
            Spacer()
        }
        .frame(width: window!.width / 3, height: window!.height - 470, alignment: .leading)
        
        /*VStack{
         GeometryReader{ geometry in
         Rectangle()
         .frame(width: geometry.size.width * 1, height: geometry.size.height * 1, alignment: .trailing)
         .foregroundColor(Color.black.opacity(0.1))
         .cornerRadius(20)
         .scaledToFit()
         
         }
         }.edgesIgnoringSafeArea(.all)*/
    }
}

#Preview {
    Settings()
}
