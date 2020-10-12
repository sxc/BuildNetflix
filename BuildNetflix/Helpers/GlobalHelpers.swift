//
//  GlobalHelpers.swift
//  BuildNetflix
//
//  Created by Xiaochun Shen on 2020/10/9.
//

import Foundation
import SwiftUI

let exampleVideoURL = URL(string: "https://www.radiantmediaplayer.com/media/big-buck-bunny-360p.mp4")!

let exampleImageURL = URL(string: "https://picsum.photos/300/104")!
let exampleImageURL2 = URL(string: "https://picsum.photos/300/105")!
let exampleImageURL3 = URL(string: "https://picsum.photos/300/106")!

var randomExampleImageURL: URL {
    [exampleImageURL, exampleImageURL2, exampleImageURL3].randomElement() ?? exampleImageURL
}

let exampleTrailer2 = Trailer(name: "Season 3 Trailer", videoURL: exampleVideoURL, thumbnailImageURL: randomExampleImageURL)

let exampleTrailer3 = Trailer(name: "The Hero's Journey ", videoURL: exampleVideoURL, thumbnailImageURL: randomExampleImageURL)

let exampleTrailer1 = Trailer(name: "Star Trek Season 3 ", videoURL: exampleVideoURL, thumbnailImageURL: randomExampleImageURL)

let exampleTrailers = [exampleTrailer1, exampleTrailer2, exampleTrailer3]

let exampleMovie1 = Movie(
    id: UUID().uuidString,
    name: "Community",
    thumbnailURL: URL(string: "https://picsum.photos/200/300")!,
    categories: ["Dystopian", "Exciting", "Suspenseful", "Sci-Fi TV"],
    year: 2020,
    rating: "TV-MA",
    numberOfSeasons: 2,
    defaultEpisodeInfo: exampleEpisodeInfo1,
    creators: "Baran bo Odan, Jantje Friese",
    cast: "Louis Hofmann, Oliver Masucci, jordis Triebel",
    moreLikeThisMovies: [exampleMovie7,exampleMovie2,exampleMovie3,exampleMovie4,exampleMovie5,exampleMovie6],
    promostionHeadline: "Best Rated Show", trailers: exampleTrailers)


let exampleMovie2 = Movie(
    id: UUID().uuidString,
    name: "Community",
    thumbnailURL: URL(string: "https://picsum.photos/200/300/")!,
    categories: ["Dystopian", "Exciting", "Suspenseful", "Sci-Fi TV"],
    year: 2020, rating: "TV-MA",
    numberOfSeasons: 3,
    defaultEpisodeInfo: exampleEpisodeInfo1,
    creators: "Baran bo Odan, Jantje Friese",
    cast: "Louis Hofmann, Oliver Masucci, jordis Triebel",
    moreLikeThisMovies: [], promostionHeadline: "Best Rated Show", trailers: exampleTrailers)

let exampleMovie3 = Movie(
    id: UUID().uuidString,
    name: "Community",
    thumbnailURL: URL(string: "https://picsum.photos/200/301")!,
    categories: ["Dystopian", "Exciting", "Suspenseful", "Sci-Fi TV"],
    year: 2020, rating: "TV-MA",
    numberOfSeasons: 3,
    defaultEpisodeInfo: exampleEpisodeInfo1,
    creators: "Baran bo Odan, Jantje Friese",
    cast: "Louis Hofmann, Oliver Masucci, jordis Triebel",
    moreLikeThisMovies: [],
    promostionHeadline: "Best Rated Show", trailers: exampleTrailers)

let exampleMovie4 = Movie(
    id: UUID().uuidString,
                          
    name: "Alone",
    thumbnailURL: URL(string: "https://picsum.photos/200/302")!,
    categories: ["Dystopian", "Exciting", "Suspenseful", "Sci-Fi TV"],
    year: 2020, rating: "TV-MA",
    numberOfSeasons: 4,
    defaultEpisodeInfo: exampleEpisodeInfo1,
    creators: "Baran bo Odan, Jantje Friese",
    cast: "Louis Hofmann, Oliver Masucci, jordis Triebel",
    moreLikeThisMovies: [],
    promostionHeadline: "Best Rated Show",
    trailers: exampleTrailers)

let exampleMovie5 = Movie(id: UUID().uuidString, name: "Hannibal", thumbnailURL: URL(string: "https://picsum.photos/200/303")!, categories: ["Dystopian", "Exciting", "Suspenseful", "Sci-Fi TV"], year: 2020, rating: "TV-MA", numberOfSeasons: 5,  defaultEpisodeInfo: exampleEpisodeInfo1,creators: "Baran bo Odan, Jantje Friese",
                          cast: "Louis Hofmann, Oliver Masucci, jordis Triebel",
                          moreLikeThisMovies: [],
                          promostionHeadline: "Best Rated Show",
                          trailers: exampleTrailers)

let exampleMovie6 = Movie(id: UUID().uuidString, name: "After Life", thumbnailURL: URL(string: "https://picsum.photos/200/304")!, categories: ["Dystopian", "Exciting", "Suspenseful", "Sci-Fi TV"], year: 2020, rating: "TV-MA", numberOfSeasons: 6,
                          defaultEpisodeInfo: exampleEpisodeInfo1, creators: "Baran bo Odan, Jantje Friese",
                          cast: "Louis Hofmann, Oliver Masucci, jordis Triebel",
                          moreLikeThisMovies: [],
                          promostionHeadline: "Best Rated Show",
                          trailers: exampleTrailers)

let exampleMovie7 = Movie(id: UUID().uuidString, name: "Before Life", thumbnailURL: URL(string: "https://picsum.photos/200/304")!, categories: ["Dystopian", "Exciting", "Suspenseful", "Sci-Fi TV"], year: 2020, rating: "TV-MA", numberOfSeasons: 6,
                          defaultEpisodeInfo: exampleEpisodeInfo1, creators: "Baran bo Odan, Jantje Friese",
                          cast: "Louis Hofmann, Oliver Masucci, jordis Triebel",
                          moreLikeThisMovies: [],
                          promostionHeadline: "Best Rated Show",
                          trailers: exampleTrailers)


var  exampleMovies: [Movie] {
    [exampleMovie1,exampleMovie2,exampleMovie3,exampleMovie4,exampleMovie5,exampleMovie6].shuffled()
}

let exampleEpisodeInfo1 = CurrentEpisodeInfo(episodeName: "Beginnings and Endings",
                                             description: "Six months after the disappearances, the police form a task force. In 2052, Jonas learns that most of Winden perished in an apocalyptic event.", season: 1,
                                             episode: 1)


extension LinearGradient {
    static let blackOpacityGradient = LinearGradient(gradient: Gradient(colors: [Color.black.opacity(0.0), Color.black.opacity(0.95)]),
                                                     startPoint: .top,
                                                     endPoint: .bottom)
}


extension String {
    func widthOfString(usingFont font: UIFont) -> CGFloat {
        let fontAttributes = [NSAttributedString.Key.font: font]
        let size = self.size(withAttributes: fontAttributes)
        return size.width
    }
}
