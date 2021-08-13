//
//  Trailer.swift
//  NetflixDemo
//
//  Created by Ali Şahbaz on 6.06.2021.
//

import Foundation

struct Trailer: Identifiable, Hashable {
    var id: String = UUID().uuidString
    var name: String
    var videoURL:URL
    var thumbnailImageURL: URL
}
