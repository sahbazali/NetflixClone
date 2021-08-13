//
//  GlobalHelpers.swift
//  NetflixDemo
//
//  Created by Ali Şahbaz on 31.05.2021.
//

import Foundation
import SwiftUI

let exampleMovie1 = Movie(
    id: UUID().uuidString,
    name: "DARK",
    thumbnailURL: URL(string: "https://picsum.photos/200/300")!,
    categories: ["Dystopian", "Exciting", "Suspenful", "Sci-Fi TV"],
    year: 2020,
    rating: "TV-MA",
    numberOfSeasons: 2,
    defaultEpisodeInfo: exampleEpisodeInfo1,
    creators: "Baran bo Odan, Jantje Friese",
    cast: "Louis Hofmann, Oliver Masucci, jordis Triebel",
    moreLikeThisMovies:  [exampleMovie2, exampleMovie3, exampleMovie4, exampleMovie5, exampleMovie6, exampleMovie7],
    episodes: allExampleEpisodes,
    trailers: exampleTrailers
)
let exampleMovie2 = Movie(
    id: UUID().uuidString, name: "Travelers",
    thumbnailURL: URL(string: "https://picsum.photos/200/300/")!,
    categories: ["Dystopian", "Exciting", "Suspenful", "Sci-Fi TV"],
    year: 2020, rating: "TV-MA",
    numberOfSeasons: 2,
    defaultEpisodeInfo: exampleEpisodeInfo1,
    creators: "Baran bo Odan, Jantje Friese",
    cast: "Louis Hofmann, Oliver Masucci, jordis Triebel",
    moreLikeThisMovies: [],
    trailers: exampleTrailers
)
let exampleMovie3 = Movie(
    id: UUID().uuidString,
    name: "Community",
    thumbnailURL: URL(string: "https://picsum.photos/200/301")!,
    categories: ["Dystopian", "Exciting", "Suspenful", "Sci-Fi TV"],
    year: 2020,
    rating: "TV-MA",
    numberOfSeasons: 3,
    defaultEpisodeInfo: exampleEpisodeInfo1,
    creators: "Baran bo Odan, Jantje Friese",
    cast: "Louis Hofmann, Oliver Masucci, jordis Triebel",
    moreLikeThisMovies: [],
    trailers: exampleTrailers
)
let exampleMovie4 = Movie(
    id: UUID().uuidString,
    name: "Alone",
    thumbnailURL: URL(string: "https://picsum.photos/200/302")!,
    categories: ["Dystopian", "Exciting", "Suspenful", "Sci-Fi TV"],
    year: 2020, rating: "TV-MA",
    numberOfSeasons: 4,
    currentEpisode: exampleEpisodeInfo1,
    defaultEpisodeInfo: exampleEpisodeInfo1,
    creators: "Baran bo Odan, Jantje Friese",
    cast: "Louis Hofmann, Oliver Masucci, jordis Triebel",
    moreLikeThisMovies: [],
    trailers: exampleTrailers
)
let exampleMovie5 = Movie(
    id: UUID().uuidString,
    name: "Hannibal",
    thumbnailURL: URL(string: "https://picsum.photos/200/303")!,
    categories: ["Dystopian", "Exciting", "Suspenful", "Sci-Fi TV"],
    year: 2020,
    rating: "TV-MA",
    numberOfSeasons: 5,
    defaultEpisodeInfo: exampleEpisodeInfo1,
    creators: "Baran bo Odan, Jantje Friese",
    cast: "Louis Hofmann, Oliver Masucci, jordis Triebel",
    moreLikeThisMovies: [],
    trailers: exampleTrailers
)
let exampleMovie6 = Movie(
    id: UUID().uuidString,
    name: "After Life",
    thumbnailURL: URL(string: "https://picsum.photos/200/304")!,
    categories: ["Dystopian", "Exciting", "Suspenful", "Sci-Fi TV"],
    year: 2020,
    rating: "TV-MA",
    numberOfSeasons: 6,
    currentEpisode: exampleEpisodeInfo1,
    defaultEpisodeInfo: exampleEpisodeInfo1,
    creators: "Baran bo Odan, Jantje Friese",
    cast: "Louis Hofmann, Oliver Masucci, jordis Triebel",
    moreLikeThisMovies: [],
    promotionHeadline: "Watch Season 6 now",
    trailers: exampleTrailers
)

let exampleMovie7 = Movie(
    id: UUID().uuidString,
    name: "01 Adana",
    thumbnailURL: URL(string: "https://picsum.photos/200/305")!,
    categories: ["Dystopian", "Exciting", "Suspenful", "Sci-Fi TV"],
    year: 2019,
    rating: "TV-MA",
    numberOfSeasons: 1,
    currentEpisode: exampleEpisodeInfo1,
    defaultEpisodeInfo: exampleEpisodeInfo1,
    creators: "Baran bo Odan, Jantje Friese",
    cast: "Louis Hofmann, Oliver Masucci, jordis Triebel",
    moreLikeThisMovies: [],
    promotionHeadline: "Watch Season 1 now",
    trailers: exampleTrailers
)


var exampleMovies : [Movie]{
    return [exampleMovie1, exampleMovie2, exampleMovie3, exampleMovie4, exampleMovie5, exampleMovie6].shuffled()
}

let exampleEpisodeInfo1 = CurrentEpisodeInfo(episodeName: "Beginnings and Ending", description: "Six months after the disappearances, the police form a task in 2052, Jonas learns that most of Winden perished in an apocalyptic event." , season: 2, episode: 1)

let exampleVideoURL = URL(string: "https://www.radiantmediaplayer.com/media/big-buck-bunny-360p.mp4")!

let exampleImageURL = URL(string: "https://picsum.photos/200/104")!
let exampleImageURL2 = URL(string: "https://picsum.photos/200/106")!
let exampleImageURL3 = URL(string: "https://picsum.photos/200/105")!

var randomExampleImageURL: URL {
    return [exampleImageURL,exampleImageURL2,exampleImageURL3].randomElement() ?? exampleImageURL
}

let exampleTrailer1 = Trailer(name: "Season 3 Trailer", videoURL: exampleVideoURL, thumbnailImageURL: randomExampleImageURL)
let exampleTrailer2 = Trailer(name: "The Hero's Journey", videoURL: exampleVideoURL, thumbnailImageURL: randomExampleImageURL)
let exampleTrailer3 = Trailer(name: "The Mysterious", videoURL: exampleVideoURL, thumbnailImageURL: randomExampleImageURL)

let exampleTrailers = [exampleTrailer1,exampleTrailer2,exampleTrailer3]


let episode1 = Episode(
    name: "Beginnings and Endings",
    season: 1,
    episodeNumber: 1,
    thumbnailImageURLString: "https://picsum.photos/300/102",
    descprition: "In 1921, a young Noah and another man are building a passage into the cave that will become the portal. Noah kills his companion on suspicions that he lost [his] faith.",
    length: 61,
    videoURL: exampleVideoURL
)
let episode2 = Episode(
    name: "Dark Matter",
    season: 1,
    episodeNumber: 2,
    thumbnailImageURLString: "https://picsum.photos/300/106",
    descprition: "In 1987, Mikkel struggles to live his new life as Michael with Ines as his guardian. The old Claudia visits her younger self to inform her about time travel, giving her coordinates of a time machine buried in her backyard.",
    length: 57,
    videoURL: exampleVideoURL
)
let episode3 = Episode(
    name: "Ghosts",
    season: 1,
    episodeNumber: 3,
    thumbnailImageURLString: "https://picsum.photos/300/105",
    descprition: "In 1987, Egon visits the older Ulrich at the asylum. Ulrich tells Egon his identity, which reminds Egon of claims Mikkel made when he first appeared in 1986. After interviewing Ines, Egon shows older Ulrich a photo of Mikkel.",
    length: 59,
    videoURL: exampleVideoURL
)
let episode4 = Episode(
    name: "Travelers",
    season: 2,
    episodeNumber: 1,
    thumbnailImageURLString: "https://picsum.photos/300/100",
    descprition: "An injured Jonas finds himself in Winden at the year 1921, where he is nursed by the inhabitants.",
    length: 52,
    videoURL: exampleVideoURL
)
let episode5 = Episode(
    name: "Sopranos",
    season: 2,
    episodeNumber: 2,
    thumbnailImageURLString: "https://picsum.photos/300/101",
    descprition: "In 1921, Adam discusses his philosophy with Jonas, who is dismayed by the callous person he is to become.",
    length: 68,
    videoURL: exampleVideoURL
)
let episode6 = Episode(
    name: "Sopranos",
    season: 2,
    episodeNumber: 3,
    thumbnailImageURLString: "https://picsum.photos/300/107",
    descprition: "In 1921, Adam discusses his philosophy with Jonas, who is dismayed by the callous person he is to become. Adam tells Jonas about a loophole that will change the past and shows him a God Particle that will take him to any time he wants.",
    length: 68,
    videoURL: exampleVideoURL
)

let allExampleEpisodes = [episode1, episode2, episode3, episode4,episode5,episode6]

extension LinearGradient {
    static let blackOpacityGradient = LinearGradient(
        gradient: Gradient(colors: [Color.black.opacity(0.0),
                                    Color.black.opacity(0.95)]),
        startPoint: .top,
        endPoint: .bottom)
}

extension String {
    func widthOfString(usingFont font: UIFont) -> CGFloat {
        let fontAttribures = [NSAttributedString.Key.font: font]
        let size = self.size(withAttributes: fontAttribures)
        return size.width
    }
}

extension View {
    func hideKeyboard() {
        UIApplication.shared.sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
}
