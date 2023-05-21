import SwiftUI

@main
struct PodcastApp: App {
    
    @Environment(\.colorScheme) private var colorScheme
    @StateObject private var theme = AppTheme.light
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(theme)
                .onAppear {
                    updateTheme()
                }
        }
    }
    
    private func updateTheme() {
        switch colorScheme {
        case .light:
            theme.primaryColor = .blue
            theme.secondaryColor = .gray
        case .dark:
            theme.primaryColor = .yellow
            theme.secondaryColor = .black
        @unknown default:
            theme.primaryColor = .blue
            theme.secondaryColor = .gray
        }
    }

}

struct Previews_PodcastApp_Previews: PreviewProvider {
    static var previews: some View {
        /*@START_MENU_TOKEN@*/Text("Hello, World!")/*@END_MENU_TOKEN@*/
    }
}
