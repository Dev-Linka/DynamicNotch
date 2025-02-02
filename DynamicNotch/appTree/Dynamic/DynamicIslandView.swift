//
// Created by S7epz on 01/02/25.
// Copyright © 2025 ACME.
// All Rights Reserved.



import SwiftUI

struct DynamicIslandView: View {
    @State private var isExpanded = false
    @Binding var transparent: Bool

    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 40)
                .fill(transparent ? Color.black.opacity(0.5) : Color.black)
                .frame(width: isExpanded ? 200 : 100, height: 40) // Base width, doesn't change
                //.scaleEffect(x: isExpanded ? 2 : 1, y: 1) // Expands symmetrically
                .shadow(radius: 5)
                .animation(.spring(response: 0.5, dampingFraction: 0.6), value: isExpanded)
                .transition(.move(edge: .bottom))

            if isExpanded {
                Text(String(transparent))
                    .foregroundColor(.white)
                    .transition(.opacity)
            }
        }
        .onHover { hovering in
            isExpanded = hovering
        }
        .frame(width: 300)
    }
}
