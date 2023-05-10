import SwiftUI

struct MasterView: View {
    
    var body: some View {
            NavigationStack {
                List {
                    Section() {
                        RowMaster(text: "Podcasts", imageName: "bibliotheque", icon: "chevron.right")
                        RowMaster(text: "Enregistrés", imageName: "bibliotheque", icon: "chevron.right")
                        RowMaster(text: "Téléchargements", imageName: "bibliotheque", icon: "chevron.right")
                        RowMaster(text: "Derniers épisodes", imageName: "bibliotheque", icon: "chevron.right")
                    }
                    
                }
                .navigationBarTitle("Bibliothèque")
                .listStyle(GroupedListStyle())
                .navigationBarItems(trailing:
                    HStack {
                        Button(action: {
                        }) {
                            Image(systemName: "ellipsis")
                                .imageScale(.large)
                        }
                    }
                )
            }
        }
}

struct RowMaster : View{
    
    let text: String
    let imageName: String
    let icon : String
    
    var body: some View {
        HStack(alignment: .center, spacing: 20) {
            Image(imageName)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 50, height: 50)
                .cornerRadius(8)
                .padding(.trailing, 2)
            
            Text(text)
                .font(.title2)
            
            Spacer()
            
            Image(systemName: icon)
                .foregroundColor(.gray)
                .font(.system(size: 15))
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        MasterView()
    }
}

