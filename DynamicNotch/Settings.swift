//
// Created by S7epz on 17/01/25.
// Copyright © 2025 ACME.
// All Rights Reserved.

import SwiftUI

struct Settings: View{
    @State var tap: Bool = false
    
    var body: some View {
        
        HStack{
            
            VStack{
                Button(action: {
                    if(tap == true){
                        tap = false
                    }else{
                        tap = true
                    }
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
                GeometryReader{ geometry in
                    VStack{
                        Rectangle()
                            .frame(width: geometry.size.width, height: geometry.size.height, alignment: .trailing)
                            .foregroundColor(Color.black.opacity(0.1))
                            .cornerRadius(20)
                        
                    }
                }.edgesIgnoringSafeArea(.all)
                
                    
                    
            }
            
                
            
        }
        .padding()
        .frame(width: 620, height: 420)
    }
}

#Preview{
    Settings()
}
