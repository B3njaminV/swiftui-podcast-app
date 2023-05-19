import SwiftUI

struct ContentView: View {
    
    @State private var selection = 2
    
    var body: some View {
        TabView(selection: $selection) {            
            BibliothequeView()
                .tabItem {
                    Image(systemName: "play.circle")
                    Text("Écouter")
                }
                .tag(0)
            
            BibliothequeView()
                .tabItem {
                    Image(systemName: "square.grid.2x2.fill")
                    Text("Explorer")
                }
                .tag(1)
            
            BibliothequeView()
                .tabItem {
                    Image(systemName: "square.stack.fill")
                    Text("Bibliothèque")
                }
                .tag(2)
            
            Text("")
                .tabItem {
                    Image(systemName: "magnifyingglass")
                    Text("Rechercher")
                }
                .tag(3)
        }
        .navigationBarHidden(true)
        .accentColor(.blue)
        .overlay{
            VStack{
                Spacer()
                NowPlayingView()
                    .frame(height: 178)
            }
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
