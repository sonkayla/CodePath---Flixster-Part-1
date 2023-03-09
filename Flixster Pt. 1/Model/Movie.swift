//
//  Movies.swift
//  Flixster Pt. 1
//
//  Created by Kayla Son on 3/6/23.
//

import Foundation

// Movies model struct
struct Movie {
    let titleName: String
    let description: String
    let artworkUrl100: URL
    
    // Detail Properties
    let backdropImage: URL
    let voteAverage: String
    let voteCount: String
    let popularity: String
}

extension Movie {
    /// An array of mock tracks
    static var mockMovies: [Movie]  = [
        Movie(titleName: "Knock at the Cabin",
              description: "While vacationing at a remote cabin, a young girl and her two fathers are taken hostage by four armed strangers who demand that the family make an unthinkable choice to avert the apocalypse. With limited access to the outside world, the family must decide what they believe before all is lost.",
              artworkUrl100: URL(string:"https://davistheater.com/wp-content/uploads/2023/02/dm06L9pxDOL9jNSK4Cb6y139rrG-scaled.jpg")!, backdropImage: URL(string:"https://images.flickreel.com/wp-content/uploads/2023/02/22z44LPkMyf5nyyXvv8qQLsbom-1280x720.jpg")!, voteAverage: "6.6", voteCount: "826", popularity: "3975.228"),
        
        Movie(titleName: "Black Panther: Wakanda Forever",
              description: "Queen Ramonda, Shuri, M 2019 Baku, Okoye and the Dora Milaje fight to protect their nation from intervening world powers in the wake of King T 2019 Challa 2019s death.  As the Wakandans strive to embrace their next chapter, the heroes must band together with the help of War Dog Nakia and Everett Ross and forge a new path for the kingdom of Wakanda.",
              artworkUrl100: URL(string: "https://davistheater.com/wp-content/uploads/2022/11/sv1xJUazXeYqALzczSZ3O6nkH75-scaled.jpg")!, backdropImage: URL(string:"https://marvelorder.com/.netlify/functions/tmdb-image/xDMIl84Qo5Tsu62c9DGWhmPI67A.webp?transparent=0")!, voteAverage: "7.4", voteCount: "3868", popularity: "3095.305"),
        
        Movie(titleName: "Puss in Boots: The Last Wish",
              description: "Puss in Boots discovers that his passion for adventure has taken its toll: He has burned through eight of his nine lives, leaving him with only one life left. Puss sets out on an epic journey to find the mythical Last Wish and restore his nine lives.",
              artworkUrl100: URL(string: "https://posters-uk.s3.eu-west-2.amazonaws.com/COMRYD/kuf6dutpsT0vSVehic3EZIqkOBt.jpg")!, backdropImage: URL(string: "https://www.themoviedb.org/t/p/w780/b1Y8SUb12gPHCSSSNlbX4nB3IKy.jpg")!, voteAverage: "8.4", voteCount: "4309", popularity: "2589.341"),
        
        Movie(titleName: "Plane", description: "After a heroic job of successfully landing his storm-damaged aircraft in a war zone, a fearless pilot finds himself between the agendas of multiple militias planning to take the plane and its passengers hostage.", artworkUrl100: URL(string: "https://image.tmdb.org/t/p/original//qi9r5xBgcc9KTxlOLjssEbDgO0J.jpg")!, backdropImage: URL(string: "https://static1.colliderimages.com/wordpress/wp-content/uploads/2022/10/Gerard-Butler-and-Mike-Colter-in-Plane.jpg")!, voteAverage: "6.9", voteCount: "785", popularity: "2068.255"),
        
        Movie(titleName: "Little Dixie", description: "Erstwhile Special Forces operative Doc Alexander is asked to broker a truce with the Mexican drug cartel in secrecy. When Oklahoma Governor Richard Jeffs celebrates the execution of a high-ranking cartel member on TV, his Chief of Staff and Doc inform him about the peace he just ended. But it 2019s too late, as Cuco, the cartel 2019s hatchet man, has set his vengeful sights on Doc 2019s daughter Dixie.", artworkUrl100: URL(string: "https://image.tmdb.org/t/p/original//cmWTZj9zzT9KFt3XyL0gssL7Ig8.jpg")!, backdropImage: URL(string: "https://www.themoviedb.org/t/p/w250_and_h141_face/k4V6EvpcOsu8CX10JD0H53lFXLq.jpg")!, voteAverage: "6.3", voteCount: "52", popularity: "1688.474"),
        
        Movie(titleName: "Huesera", description: "Valeria's joy at becoming a first-time mother is quickly taken away when she's cursed by a sinister entity. As danger closes in, she's forced deeper into a chilling world of dark magic that threatens to consume her.", artworkUrl100: URL(string: "https://www.mctvohio.com/vod/posters/202302/7NhG3NClQ1xrc3kEwTiwFht5Y3L.jpg")!, backdropImage: URL(string: "https://assets.americancinematheque.com/wp-content/uploads/2022/09/11211150/Huesera-HERO-1.jpg")!, voteAverage: "6.6", voteCount: "75", popularity: "1436.445")
    ]

    // We can now access this array of mock tracks anywhere like this:
    // let tracks = Tracks.mockTracks
}

func formattedMovieDuration(with milliseconds: Int) -> String {
    let (minutes, seconds) = milliseconds.quotientAndRemainder(dividingBy: 60 * 1000)
    let truncatedSeconds = seconds / 1000
    if truncatedSeconds >= 10 {
        return "\(minutes):\(truncatedSeconds)"
    } else {
        return "\(minutes):0\(truncatedSeconds)"
    }
}
