import SwiftUI

struct DynamicIslandView: View {
    @State private var isExpanded = false
    @Binding var transparent: Bool
    

    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: isExpanded ? 20 : 15)
                .fill(transparent ? Color.black.opacity(0.5) : Color.black)
                .frame(width: isExpanded ? 200 : 100, height: isExpanded ? 60 : 40)
                .shadow(radius: 5)
                .animation(.spring(response: 0.4, dampingFraction: 0.6), value: isExpanded)
            
            if isExpanded {
                Text(String(transparent))
                    .foregroundColor(.white)
                    .transition(.opacity)
            }
        }
        .onHover { hovering in
            isExpanded = hovering
        }
    }
}

