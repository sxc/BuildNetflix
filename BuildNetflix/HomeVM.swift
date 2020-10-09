//
//  HomeVM.swift
//  BuildNetflix
//
//  Created by Xiaochun Shen on 2020/10/9.
//

import Foundation

class HomeVM: ObservableObject {
    
    // String == Category
    @Published var movies: [String: [Movie]] = [:]
    
    public var allCategories: [String] {
        movies.keys.map({ String($0) })
    }
    
    public func getMovie(forCat cat: String) -> [Movie] {
        return movies[cat] ?? []
    }
    
    init() {
        setupMovies()
    }
    
    func setupMovies() {
        movies["Trending Now"] = exampleMovies
        movies["Stand-Up Comedy"] = exampleMovies
        movies["New Release"] = exampleMovies
        movies["Watch It Again"] = exampleMovies
        movies["Sci-Fi Movies"] = exampleMovies
    }
}
