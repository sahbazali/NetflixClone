//
//  Episode.swift
//  NetflixDemo
//
//  Created by Ali Şahbaz on 3.06.2021.
//

import Foundation

struct Episode: Identifiable {
    var id = UUID().uuidString
    
    var name: String
    var season: Int
    var episodeNumber: Int
    var thumbnailImageURLString: String
    var descprition: String
    var length: Int
    
    var videoURL: URL
    
    var thumbnailURL: URL {
        return URL(string: thumbnailImageURLString)!
    }
}
