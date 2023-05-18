import SwiftUI

struct BibliothequeListView: View {
    let podcasts: [Podcast] = podcastData
    @State private var selectedPodcast: Podcast? = nil

    var body: some View {
        NavigationStack {
            VStack() {
                ScrollView {
                    LazyVGrid(columns: [GridItem(.flexible()), GridItem(.flexible())], spacing: 16) {
                        ForEach(podcasts) { podcast in
                            NavigationLink(destination:
                                PodcastDetail(podcast: podcast))
                            {
                                PodcastResumeView(podcast: podcast)
                            }
                        }
                    }
                    .padding(.horizontal, 0)
                }
                Spacer()
                .navigationTitle("Podcasts")
            }
            .listStyle(.grouped)
        }
    }
}


struct BibliothequeListView_Previews: PreviewProvider {
    static var previews: some View {
        BibliothequeListView()
    }
}
