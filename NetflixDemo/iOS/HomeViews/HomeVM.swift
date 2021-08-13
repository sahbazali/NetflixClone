//
//  HomeVM.swift
//  NetflixDemo
//
//  Created by Ali Şahbaz on 1.06.2021.
//

import Foundation

class HomeVM: ObservableObject, Identifiable {
    //String == Category
    @Published var movies: [String:[Movie]] = [:]
    
    public var allCategories: [String] {
        return movies.keys.map({ String($0)})
    }
    
    public var allGenre: [HomeGenre] = [.AllGenres, .Action, .Comedy, .Thriller]
    
    public func getMovie(forCat cat: String, andHomeRow homeRow: HomeTopRow, andGenre genre: HomeGenre) -> [Movie] {
        switch homeRow {
        case .home:
            return movies[cat] ?? []
        case .movies:
            return (movies[cat] ?? []).filter({($0.movieType == .movie) && ($0.genre == genre)})
        case .tvShows:
            return (movies[cat] ?? []).filter({($0.movieType != .movie) && ($0.genre == genre)} )
        case .myList:
            return movies[cat] ?? []
        }
    }
    
    init() {
        setupMovies()
    }
    
    func setupMovies() {
        movies["Trending Now"] = exampleMovies
        movies["Stand-up Comedy"] = exampleMovies.shuffled()
        movies["Watch It Again"] = exampleMovies.shuffled()
        movies["Horror"] = exampleMovies.shuffled()
    }
}
