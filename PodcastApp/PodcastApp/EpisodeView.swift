//
//  Episode.swift
//  PodcastApp
//
//  Created by etudiant on 11/05/2023.
//

import SwiftUI

struct EpisodeView: View {
    
    var titre: String
    var date: String
    var description: String
    var temps : String
    
    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            Text(date)
                .font(.subheadline)
                .foregroundColor(.gray)

            Text(titre)
                .font(.title2)
                .fontWeight(.bold)

            Text(description)

            PlayButtonView(temps: temps)
            
        }
        .background(.white)
        .padding()
    }
}

struct PlayButtonView: View {
    
    var temps : String
    
    @State private var isPlaying = false
    @State private var duree: Double = 2.0

    var body: some View {
        Button(action: {
            isPlaying.toggle()
        }) {
            HStack{
                HStack{
                    Image(systemName: isPlaying ? "stop.fill" : "play.fill")
                        .frame(width: 40, height: 40)
                        .imageScale(.large)
                        .foregroundColor(.purple)
                        .background(.gray)
                        .clipShape(Circle())
                    Text(temps)
                        .foregroundColor(.purple)
                }
                Spacer()
                Button(action: {
                }) {
                    Image(systemName: "ellipsis")
                        .frame(width: 40, height: 40)
                        .imageScale(.large)
                        .foregroundColor(.gray)
                }
            }
            
        }
    }
}

struct Episode_Previews: PreviewProvider {
    static var previews: some View {
        EpisodeView(titre: "Une forme rudimentaire rudimentaire rudimentaire", date: "12 mai", description: "C'est le journal des sciences", temps: "12 mai")
    }
}
