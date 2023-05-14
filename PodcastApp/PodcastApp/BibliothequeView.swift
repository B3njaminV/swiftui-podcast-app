//
//  BibliothequeView.swift
//  PodcastApp
//
//  Created by etudiant on 15/05/2023.
//

import SwiftUI

struct BibliothequeView: View {
    let podcasts: [Podcast] = podcastData
    @State private var selectedPodcast: Podcast? = nil

    var body: some View {
        NavigationView {
            VStack() {
                ScrollView {
                    LazyVGrid(columns: [GridItem(.flexible()), GridItem(.flexible())], spacing: 16) {
                        ForEach(podcasts) { podcast in
                            PodcastResumeView(podcast: podcast)
                                .onTapGesture {
                                    selectedPodcast = podcast
                                }
                        }
                    }
                    
                    .padding(.horizontal, 0)
                }
                
                Spacer()
            }
            .navigationTitle("Podcasts")
            .sheet(item: $selectedPodcast) { podcast in
                DetailView(podcast: podcast)
            }
        }
    }
}


struct BibliothequeView_Previews: PreviewProvider {
    static var previews: some View {
        BibliothequeView()
    }
}
