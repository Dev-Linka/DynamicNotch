//
// Created by S7epz on 28/01/25.
// Copyright © 2025 ACME.
// All Rights Reserved.

import SwiftUI

struct Settings: View{
    @State var tap: Bool = false
    @State var selected = "Home"
    @Namespace var animation
    var window = NSScreen.main?.visibleFrame
    
    var body: some View {
        
        VStack{
            
            HStack{
                
                VStack{
                    
                    HStack{
                        Image(systemName: ".globe")
                        Text("Timestamp")
                    }
                    .padding(.top, 25)
                    .padding(.leading)
                    
                    //Button for navigation
                    
                }
                
            }.frame(width: 220)
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
