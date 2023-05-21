//
//  BibliothequeMenuItem.swift
//  PodcastApp
//
//  Created by etudiant on 18/05/2023.
//

import SwiftUI

struct BibliothequeMenuItem: View {
    var image: String
    var text: String
    
    var body: some View {
        HStack {
            Image(systemName: image)
                .foregroundColor(.accentColor)
            Text(text)
                .bold()
            Spacer()
        }
        .padding(.horizontal)
    }
}

struct BibliothequeMenuItem_Previews: PreviewProvider {
    static var previews: some View {
        BibliothequeMenuItem(image: "square.stack", text: "Podcasts")
    }
}
