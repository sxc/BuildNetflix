//
//  GlobalHelpers.swift
//  BuildNetflix
//
//  Created by Xiaochun Shen on 2020/10/9.
//

import Foundation
import SwiftUI

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
    promostionHeadline: "Best Rated Show")


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
    promostionHeadline: "Best Rated Show")

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
    promostionHeadline: "Best Rated Show")

let exampleMovie4 = Movie(
    id: UUID().uuidString,
                          
    name: "Alone",
    thumbnailURL: URL(string: "https://picsum.photos/200/302")!,
    categories: ["Dystopian", "Exciting", "Suspenseful", "Sci-Fi TV"],
    year: 2020, rating: "TV-MA",
    numberOfSeasons: 4,
    defaultEpisodeInfo: exampleEpisodeInfo1,
    creators: "Baran bo Odan, Jantje Friese",
                          cast: "Louis Hofmann, Oliver Masucci, jordis Triebel", promostionHeadline: "Best Rated Show")

let exampleMovie5 = Movie(id: UUID().uuidString, name: "Hannibal", thumbnailURL: URL(string: "https://picsum.photos/200/303")!, categories: ["Dystopian", "Exciting", "Suspenseful", "Sci-Fi TV"], year: 2020, rating: "TV-MA", numberOfSeasons: 5,  defaultEpisodeInfo: exampleEpisodeInfo1,creators: "Baran bo Odan, Jantje Friese",
                          cast: "Louis Hofmann, Oliver Masucci, jordis Triebel", promostionHeadline: "Best Rated Show")

let exampleMovie6 = Movie(id: UUID().uuidString, name: "After Life", thumbnailURL: URL(string: "https://picsum.photos/200/304")!, categories: ["Dystopian", "Exciting", "Suspenseful", "Sci-Fi TV"], year: 2020, rating: "TV-MA", numberOfSeasons: 6, defaultEpisodeInfo: exampleEpisodeInfo1, creators: "Baran bo Odan, Jantje Friese",
                          cast: "Louis Hofmann, Oliver Masucci, jordis Triebel",promostionHeadline: "Best Rated Show")


let exampleMovies: [Movie] = [exampleMovie1,exampleMovie2,exampleMovie3,exampleMovie4,exampleMovie5,exampleMovie6]

let exampleEpisodeInfo1 = CurrentEpisodeInfo(episodeName: "Beginnings and Endings",
                                             description: "Six months after the disappearances, the police form a task force. In 2052, Jonas learns that most of Winden perished in an apocalyptic event.", season: 1,
                                             episode: 1)


extension LinearGradient {
    static let blackOpacityGradient = LinearGradient(gradient: Gradient(colors: [Color.black.opacity(0.0), Color.black.opacity(0.95)]),
                                                     startPoint: .top,
                                                     endPoint: .bottom)
}
