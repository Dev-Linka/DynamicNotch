//
// Created by S7epz on 01/02/25.
// Copyright © 2025 ACME.
// All Rights Reserved.



import SwiftUI

struct DynamicIslandView: View {
    @State private var isExpanded = false
    @Binding var transparent: Bool
    @State private var isTapped: Bool = false

    var body: some View {
        ZStack {
            Rectangle()
                .fill(isExpanded ? (transparent ? Color.black.opacity(0.5) : Color.cyan) : Color.clear)
                .frame(width: isExpanded ? 270 : 150, height: 54)
                .clipShape(
                    .rect(
                        bottomLeadingRadius: 15,
                        bottomTrailingRadius: 15
                    )
                )
                .animation(.spring(response: 0.5, dampingFraction: 0.8), value: isExpanded)

            
        }
        .onTapGesture {
                   isTapped = true
               }
        .onHover { hovering in
            isExpanded = hovering
            if isTapped{
                isTapped = hovering
            }
            
        }
        .frame(width: 300)
    }
}


