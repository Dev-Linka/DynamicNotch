//
// Created by S7epz on 28/01/25.
// Copyright © 2025 ACME.
// All Rights Reserved.


import SwiftUI

struct TabButton: View{
    var image: String
    var title: String
    @Binding var selected: String
    
    var animation: Namespace.ID
    
    var body: some View{
        
        VStack{
            Button(action: {
                withAnimation(.spring()){
                    selected = title
                }
            }, label: {
                HStack{
                    Image(systemName: image)
                        .font(.title2)
                        //.foregroundColor(selected == title ? Color.black : .none)
                    
                    Text(title)
                        .fontWeight(selected == title ? .semibold : .none)
                        //.foregroundColor(selected == title ? Color.black : .none)
                        .animation(.none)
                    
                    Spacer()
                    
                    ZStack{
                        Capsule()
                            .fill(Color.clear)
                            .frame(width: 3, height: 18)
                        
                        if selected == title{
                            Capsule()
                                .fill(Color.white)
                                .frame(width: 3, height: 18)
                                .matchedGeometryEffect(id: "Tab", in: animation)
                        }
                    }
                }.padding(.horizontal)
            }).buttonStyle(PlainButtonStyle())
        }
        
        
        
    }
}

var black = Color.black.opacity(0.7)
