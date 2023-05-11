import SwiftUI

struct TabBar: View {
    
    @State private var selection = 2
    
    var body: some View {
        TabView(selection: $selection) {            
            MasterView()
                .tabItem {
                    Image(systemName: "play.circle")
                    Text("Écouter")
                }
                .tag(0)
            
            MasterView()
                .tabItem {
                    Image(systemName: "square.grid.2x2.fill")
                    Text("Explorer")
                }
                .tag(1)
            
            MasterView()
                .tabItem {
                    Image(systemName: "books.vertical")
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
    }
}

struct TabBar_Previews: PreviewProvider {
    static var previews: some View {
        TabBar()
    }
}
