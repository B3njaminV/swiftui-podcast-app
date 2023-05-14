import SwiftUI

struct DetailView: View {
    
    let podcast: Podcast
    @State private var isScrollable = false
    
    var body: some View {
        NavigationStack {
                ScrollView {
                    VStack{
                        HStack {
                            Spacer()
                            Image("podcast")
                                .resizable()
                                .frame(width: 200, height: 200)
                                .aspectRatio(contentMode: .fit)
                                .padding()
                                .shadow(radius: 20)
                            Spacer()
                        }
                        
                        Text("Nadie Sabe Nada")
                            .font(.title3)
                            .bold()
                        HStack{
                            Image("podcast")
                                .frame(width: 40, height: 40)
                                .imageScale(.large)
                                .background(.gray)
                                .clipShape(Circle())
                            Text("SER Podcast")
                            Image(systemName: "chevron.right")
                        }
                        Button(action: {
                        }) {
                            HStack{
                                Image(systemName: "play")
                                    .frame(width: 40, height: 40)
                                    .imageScale(.large)
                                    .foregroundColor(.black)
                                Text("Dernier épisode")
                                    .foregroundColor(.black)
                                    .bold()
                                    .font(.title3)
                            }
                        }
                        .padding()
                        .background(.white)
                        .cornerRadius(12)
                        .buttonStyle(zoom())
                    }
                    
                    VStack{
                        EpisodeView(titre: "test", date: "13 mai", description: "Ceci est une description", temps: "14 min")
                        EpisodeView(titre: "test", date: "13 mai", description: "Ceci est une description", temps: "14 min")
                        EpisodeView(titre: "test", date: "13 mai", description: "Ceci est une description", temps: "14 min")
                    }
                    .listStyle(GroupedListStyle())
                    .background(.white)
                                
            }
            .navigationBarItems(trailing:
                HStack {
                    Button(action: {
                    }) {
                        Image(systemName: "arrow.down")
                            .frame(width: 40, height: 40)
                            .imageScale(.large)
                            .foregroundColor(.white)
                            .background(.gray)
                            .clipShape(Circle())
                        
                    }
                    Button(action: {
                    }) {
                        Image(systemName: "ellipsis")
                            .frame(width: 40, height: 40)
                            .imageScale(.large)
                            .foregroundColor(.white)
                            .background(.gray)
                            .clipShape(Circle())
                    }
                }
            )
            .background(Color.orange.opacity(0.5).blendMode(.multiply))
        }
    }
}

struct Detail_Previews: PreviewProvider {
    static var previews: some View {
        let podcast = Podcast(title: "Podcast 1", author: "Auteur 1", description: "Description du podcast 1", imageURL: "image1", episodes: [
                    Episode(title: "Épisode 1", description: "Description de l'épisode 1"),
                    Episode(title: "Épisode 2", description: "Description de l'épisode 2")
                ])
        DetailView(podcast: podcast)
    }
}

struct zoom: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .scaleEffect(configuration.isPressed ? 1.2 : 1)
            .animation(.easeOut(duration: 0.2), value: configuration.isPressed)
            
    }
}
