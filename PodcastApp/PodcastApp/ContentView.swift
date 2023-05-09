import SwiftUI

struct ContentView: View {
    var body: some View {
            NavigationView {
                List {
                    Section() {
                        HStack(alignment: .center, spacing: 20) {
                            Image("bibliotheque")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 50, height: 50)
                                .cornerRadius(8)
                                .padding(.trailing, 2)
                            Text("Podcasts")
                                .font(.title2)
                            Spacer()
                            Image(systemName: "chevron.right")
                                .foregroundColor(.gray)
                                .font(.system(size: 15))
                        }
                        HStack(alignment: .center, spacing: 20) {
                            Image("bibliotheque")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 50, height: 50)
                                .cornerRadius(8)
                                .padding(.trailing, 2)
                            Text("Enregistrés")
                                .font(.title2)
                            Spacer()
                            Image(systemName: "chevron.right")
                                .foregroundColor(.gray)
                                .font(.system(size: 15))
                        }
                        HStack(alignment: .center, spacing: 20) {
                            Image("bibliotheque")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 50, height: 50)
                                .cornerRadius(8)
                                .padding(.trailing, 2)
                            Text("Téléchargements")
                                .font(.title2)
                            Spacer()
                            Image(systemName: "chevron.right")
                                .foregroundColor(.gray)
                                .font(.system(size: 15))
                        }
                        HStack(alignment: .center, spacing: 20) {
                            Image("bibliotheque")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 50, height: 50)
                                .cornerRadius(8)
                                .padding(.trailing, 2)
                            Text("Derniers épisodes")
                                .font(.title2)
                            Spacer()
                            Image(systemName: "chevron.right")
                                .foregroundColor(.gray)
                                .font(.system(size: 15))
                        }
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

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
