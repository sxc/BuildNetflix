//
//  ComingSoonVM.swift
//  BuildNetflix
//
//  Created by Xiaochun Shen on 2020/10/16.
//

import Foundation

class ComingSoonVM: ObservableObject {
    @Published var movies: [Movie] = []
    
    init() {
        self.movies = generateMovies(20)
    }
}
