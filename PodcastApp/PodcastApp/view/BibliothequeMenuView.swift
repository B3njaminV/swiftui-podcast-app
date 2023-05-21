//
//  BibliothequeMenuView.swift
//  PodcastApp
//
//  Created by etudiant on 18/05/2023.
//

import SwiftUI

struct BibliothequeMenuView: View {
    var body: some View {
        LazyVStack {
            Divider()
            NavigationLink(destination: BibliothequeListView()) {
                BibliothequeMenuItem(image:"square.stack", text: "Podcasts")
            }
            Divider()
            NavigationLink(destination: BibliothequeListView()) {
                BibliothequeMenuItem(image: "bookmark", text: "Enregistrés")
            }
            Divider()
            NavigationLink(destination: BibliothequeListView()) {
                BibliothequeMenuItem(image: "arrow.down.circle", text: "Téléchargés")
            }
            Divider()
            NavigationLink(destination: BibliothequeListView()) {
                BibliothequeMenuItem(image: "clock", text: "Derniers épisodes")
            }
            Divider()
        }
    }
}

struct BibliothequeMenuView_Previews: PreviewProvider {
    static var previews: some View {
        BibliothequeMenuView()
    }
}
