//
//  ComingSoonVM.swift
//  NetflixDemo
//
//  Created by Ali Şahbaz on 31.07.2021.
//

import Foundation


class ComingSoonVM: ObservableObject {
    @Published var movies: [Movie] = []
    
    init() {
        self.movies = generateMovies(20)
    }
}
