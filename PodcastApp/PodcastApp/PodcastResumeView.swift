//
//  PodcastResumeView.swift
//  PodcastApp
//
//  Created by etudiant on 15/05/2023.
//

import SwiftUI

struct PodcastResumeView: View {
    
    let podcast: Podcast
    
    var body: some View {
        VStack(alignment: .leading, spacing: 0) {
            Image(podcast.imageURL)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .cornerRadius(10)
                .padding()
            
            Text(podcast.title)
                .font(.title3)
                .fontWeight(.bold)
                .padding(.horizontal)
            
            Text("Mise à jour : il y a 2j")
                .font(.subheadline)
                .foregroundColor(.gray)
                .padding(.horizontal)
            
            Spacer()
        }
    }
}

struct PodcastResumeView_Previews: PreviewProvider {
    static var previews: some View {
        let podcast = Podcast(title: "Podcast 1", author: "Auteur 1", description: "Description du podcast 1", imageURL: "podcast", episodes: [
                Episode(title: "Épisode 1", description: "Description de l'épisode 1", date: "20 mai", time: "20 min"),
                Episode(title: "Épisode 2", description: "Description de l'épisode 2", date: "12 avril", time: "16 min")
                ])
        PodcastResumeView(podcast: podcast)
    }
}
