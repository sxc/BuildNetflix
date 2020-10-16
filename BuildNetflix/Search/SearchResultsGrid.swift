//
//  SearchResultsGrid.swift
//  BuildNetflix
//
//  Created by Xiaochun Shen on 2020/10/16.
//

import SwiftUI

struct SearchResultsGrid: View {
    var movies: [Movie]
    
    @Binding var movieDetailToShow: Movie?
    
    let column: [GridItem] = [
        GridItem(.flexible()),
        GridItem(.flexible()),
        GridItem(.flexible())
    ]
    
    var body: some View {
        LazyVGrid(columns: column, spacing: 10) {
            ForEach(movies, id: \.id) { movie in
                StandHomeMovie(movie: movie)
                    .frame(height: 160)
                    .onTapGesture(perform: {
                        movieDetailToShow = movie
                    })
            }
            
        }
     }
}

struct SearchResultsGrid_Previews: PreviewProvider {
    static var previews: some View {
        SearchResultsGrid(movies: generateMovies(20), movieDetailToShow: .constant(nil))
    }
}
