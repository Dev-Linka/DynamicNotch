import SwiftUI
import AppKit

// NSApplication.shared.keyWindow?.close()

struct Settings: View {
    @State private var windowController: WindowController? // Open a new window
    var window = NSScreen.main?.visibleFrame // For window size
    @State var selected: String = "Settings" // First capsule position
    @Namespace var animation // For animation ID
    
    var body: some View {
        
        HStack(spacing: 0) {
            
            
            /* Nav Bar */
            VStack(alignment: .leading, spacing: 50) {
                
                Text("Dynamic Notch")
                    .font(.title2)
                    .bold()
                    .padding(.top, 25)
                
                TabButton(image: "gear", title: "Settings", selected: $selected, animation: animation)
                TabButton(image: "globe", title: "About", selected: $selected, animation: animation)
                Button("Open New Window") {
                    windowController = WindowController(view: DynamicIslandView())
                            }
                            .padding()
                
                Spacer()
            }
            .frame(width: 200)
            .padding(.leading, 10)
            
            
            /* Rectangle for the Nav Bar content */
            ZStack{
                Rectangle()
                    .fill(Color.black.opacity(0.2))
                    .frame(width: window!.width / 3, height: window!.height - 470)
                    .cornerRadius(20)
                if selected == "About"{
                    Text("About section")
                }else if selected == "Settings"{
                    Text("Settings section")
                }
                
            }
            
        }
        .frame(width: (window!.width / 3) + 200, height: window!.height - 470, alignment: .leading)
    }
}

#Preview {
    Settings()
}


func getNotchPosition() -> NSRect? {
    guard let screen = NSScreen.main else { return nil }
    let screenFrame = screen.frame
    let visibleFrame = screen.visibleFrame
    
    let notchHeight = screenFrame.height - visibleFrame.height
    
    if notchHeight > 0 {
        let notchY = screenFrame.height - notchHeight / 2
        let notchX = screenFrame.width / 2 - 50  // Adjust for notch width
        return NSRect(x: notchX, y: notchY, width: 100, height: 40)
    }
    
    return nil
}
