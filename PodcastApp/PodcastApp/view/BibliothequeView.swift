import SwiftUI

struct BibliothequeView: View {
    
    var body: some View {
        NavigationStack {
            ScrollView{
                BibliothequeMenuView()
                VStack(alignment: .leading) {
                    Text("Mis à jour récemment")
                        .padding()
                        .bold()
                        .font(.title2)
                    
                    BibliothequeListView()
                }
                .padding(.top)
            }
            .navigationTitle("Bibliothèque")
        }
        .accentColor(.black)
    }
}

struct BibliothequeView_Previews: PreviewProvider {
    static var previews: some View {
        BibliothequeView()
    }
}

