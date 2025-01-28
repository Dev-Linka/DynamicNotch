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
            Button(action: {}, label: {
                HStack{
                    Image(systemName: image)
                        .foregroundColor(selected == title ? Color.black : black)
                    Text(title)
                        .fontWeight(selected == title ? .semibold : .none)
                        .foregroundColor(selected == title ? Color.black : .none)
                        .animation(.none)
                    
                    Spacer()
                    
                    ZStack{
                        Capsule()
                            .fill(Color.clear)
                            .frame(width: 3, height: 18)
                        
                        if(selected == title){
                            Capsule()
                                .fill(Color.black)
                                .frame(width: 3, height: 18)
                                .matchedGeometryEffect(id: "Tab", in: animation)
                        }
                    }
                }.padding(.horizontal)
            }).buttonStyle(.plain)
        }
        
        
        
    }
}

var black = Color.black.opacity(0.7)
