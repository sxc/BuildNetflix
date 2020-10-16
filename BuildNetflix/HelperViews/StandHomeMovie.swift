//
//  StandHomeMovie.swift
//  BuildNetflix
//
//  Created by Xiaochun Shen on 2020/10/9.
//

import SwiftUI
import KingfisherSwiftUI

struct StandHomeMovie: View {
    var movie: Movie
    
    var body: some View {
        KFImage(movie.thumbnailURL)
            .resizable()
            .scaledToFill()
            .frame(width: 200, height: 300)
    }
}

struct StandHomeMovie_Previews: PreviewProvider {
    static var previews: some View {
        StandHomeMovie(movie: exampleMovie1)
            
    }
}
