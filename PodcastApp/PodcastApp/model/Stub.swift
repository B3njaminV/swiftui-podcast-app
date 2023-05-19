import Foundation

let podcastData: [Podcast] = [
    Podcast(title: "Nadie Sabe Nada", author: "Berto Romero", description: "Description du podcast", imageURL: "podcast", episodes: [
        Episode(title: "Épisode 1", description: "Description de l'épisode 1", date: "20 mai", time: "20 min"),
        Episode(title: "Épisode 2", description: "Description de l'épisode 2", date: "12 avril", time: "16 min")
    ]),
    Podcast(title: "Spotlight", author: "AlloCine", description: "Description du podcast", imageURL: "allocine", episodes: [
        Episode(title: "Épisode 1", description: "Description de l'épisode 1", date: "14 janvier", time: "6 min"),
        Episode(title: "Épisode 2", description: "Description de l'épisode 2", date: "30 mars", time: "16 min")
    ]),
    Podcast(title: "Sans algo", author: "Inconnu", description: "Description du podcast", imageURL: "sansalgo", episodes: [
        Episode(title: "Épisode 1", description: "Description de l'épisode 1", date: "14 mai", time: "10 min"),
        Episode(title: "Épisode 2", description: "Description de l'épisode 2", date: "14 mai", time: "10 min")
    ]),
    Podcast(title: "Podcast 1", author: "Auteur 1", description: "Description du podcast 1", imageURL: "podcast", episodes: [
        Episode(title: "Épisode 1", description: "Description de l'épisode 1", date: "14 mai", time: "10 min"),
        Episode(title: "Épisode 2", description: "Description de l'épisode 2", date: "14 mai", time: "10 min")
    ])
]
