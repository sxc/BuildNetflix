//
//  Movie.swift
//  BuildNetflix
//
//  Created by Xiaochun Shen on 2020/10/9.
//

import Foundation

struct Movie: Identifiable {
    var id: String
    var name: String
    var thumbnailURL: URL
    
    var categories: [String]
}
