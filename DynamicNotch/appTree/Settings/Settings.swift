import SwiftUI

struct Settings: View {
     
    var window = NSScreen.main?.visibleFrame
    @State var selected: String = "Settings"
    @Namespace var animation
    
    var body: some View {
        
        HStack(spacing: 0) {
            
            VStack(alignment: .leading, spacing: 20) {
                
                Text("Dynamic Notch")
                    .font(.title2)
                    .bold()
                    .padding(.top, 25)
                
                TabButton(image: "gear", title: "Settings", selected: $selected, animation: animation)
                TabButton(image: "globe", title: "About", selected: $selected, animation: animation)
                
                Spacer()
            }
            .frame(width: 200)
            .padding(.leading, 10)
            
            
            Rectangle()
                .fill(Color.black.opacity(0.2))
                .frame(width: window!.width / 3, height: window!.height - 470)
        }
        .frame(width: (window!.width / 3) + 200, height: window!.height - 470, alignment: .leading)
    }
}

#Preview {
    Settings()
}
