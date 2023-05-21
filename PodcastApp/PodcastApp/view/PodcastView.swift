import SwiftUI

struct PodcastView: View {
    
    let podcast: Podcast
    @State private var isScrollable = false
    
    var body: some View {
        NavigationStack {
            ScrollView {
                VStack{
                    HStack {
                        Spacer()
                        Image(podcast.imageURL)
                            .resizable()
                            .frame(width: 200, height: 200)
                            .aspectRatio(contentMode: .fit)
                            .padding()
                            .shadow(radius: 20)
                        Spacer()
                    }
                    
                    Text(podcast.title)
                        .font(.title3)
                        .bold()
                    HStack{
                        Image(podcast.imageURL)
                            .frame(width: 40, height: 40)
                            .imageScale(.large)
                            .background(.gray)
                            .clipShape(Circle())
                        Text(podcast.description)
                        Image(systemName: "chevron.right")
                    }
                    Button(action: {
                    }) {
                        HStack{
                            Image(systemName: "play")
                                .frame(width: 40, height: 30)
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
                .background(Color.orange.opacity(0.5).blendMode(.multiply))
                
                VStack{
                    HStack{
                        HStack{
                            Text("Épisodes")
                                .font(.title)
                                .bold()
                                .padding(.horizontal)
                            Image(systemName: "chevron.down")
                        }
                        
                        Spacer()
                        Text("Tout voir")
                            .font(.title3)
                            .padding(.horizontal)
                    }
                    Divider()
                    ForEach(podcast.episodes) { episode in
                        EpisodeView(titre: episode.title, date: episode.date, description: episode.description, temps: episode.time)
                        Divider()
                    }
                }
                .listStyle(GroupedListStyle())
            }
            .toolbar{
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
            }
            .navigationBarTitle("", displayMode: .inline)
        }
    }
}

struct PodcastView_Previews: PreviewProvider {
    static var previews: some View {
        let podcast = Podcast(title: "Podcast 1", author: "Auteur 1", description: "Description du podcast 1", imageURL: "podcast", episodes: [
            Episode(title: "Épisode 1", description: "Description de l'épisode 1", date: "20 mai", time: "20 min"),
            Episode(title: "Épisode 2", description: "Description de l'épisode 2", date: "12 avril", time: "16 min")
        ])
        PodcastView(podcast: podcast)
    }
}

struct zoom: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .scaleEffect(configuration.isPressed ? 1.2 : 1)
            .animation(.easeOut(duration: 0.2), value: configuration.isPressed)
            
    }
}
