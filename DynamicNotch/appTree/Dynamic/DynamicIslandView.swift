//
// Created by S7epz on 01/02/25.
// Copyright © 2025 ACME.
// All Rights Reserved.



import SwiftUI

struct DynamicIslandView: View {
    @State private var isExpanded = true
    @Binding var transparent: Bool
    @State private var isTapped: Bool = false

    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 20)
                .fill((isExpanded ? (transparent ? Color.black.opacity(0.5) : Color.cyan) : Color.clear))
                .frame(
                    width: isTapped ? 350 : (isExpanded ? 270 : 150),
                    height: isTapped ? 110 : (isExpanded ? 74 : 54)
                )
                .animation(.spring(response: 0.5, dampingFraction: 0.8), value: isExpanded)
                /*.clipShape(
                    .rect(
                        bottomLeadingRadius: 15,
                        bottomTrailingRadius: 15
                    )
                )*/
                
        }
        .onTapGesture {
            isTapped = true
        }
        .onHover { hovering in
            withAnimation(.spring(response: 0.5, dampingFraction: 0.8)) {
                isExpanded = hovering
            }
        }
        .frame(width: 300)
    }
}
