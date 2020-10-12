//
//  Trailer.swift
//  BuildNetflix
//
//  Created by Xiaochun Shen on 2020/10/12.
//

import Foundation

struct Trailer: Identifiable, Hashable {
    var id: String = UUID().uuidString
    var name: String
    var videoURL: URL
    var thumbnailImageURL: URL 
}
