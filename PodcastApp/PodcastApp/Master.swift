import SwiftUI

struct MasterView: View {
    
    var body: some View {
            NavigationStack {
                List {
                    Section() {
                        NavigationLink(destination: DetailView()) {
                            RowMaster(text: "Podcasts", imageName: "person.fill")
                        }
                        NavigationLink(destination: DetailView()) {
                            RowMaster(text: "Enregistrés", imageName: "paperplane.fill")
                        }
                        NavigationLink(destination: DetailView()) {
                            RowMaster(text: "Téléchargements", imageName: "star.fill")
                        }
                        NavigationLink(destination: DetailView()) {
                            RowMaster(text: "Derniers épisodes", imageName: "gearshape.fill")
                        }                        
                    }
                    
                }
                .navigationBarTitle("Podcast")
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
    
    var body: some View {
        HStack(alignment: .center, spacing: 20) {
            Image(systemName: imageName)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 50, height: 50)
                .cornerRadius(8)
                .padding(.trailing, 2)
            
            Text(text)
                .font(.title2)
            
            Spacer()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        MasterView()
    }
}

