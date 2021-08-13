//
//  MoreLikeThis.swift
//  NetflixDemo
//
//  Created by Ali Şahbaz on 5.06.2021.
//

import SwiftUI

struct MoreLikeThis: View {
    var movies: [Movie]
    
    let columns = [
        GridItem(.flexible()),
        GridItem(.flexible()),
        GridItem(.flexible())
    ]
    
    var body: some View {
        LazyVGrid(columns: columns) {
            ForEach(0..<movies.count) { index in
                StandardHomeMovie(movie:movies[index])
            }
        }
    }
}

struct MoreLikeThis_Previews: PreviewProvider {
    static var previews: some View {
        ScrollView {
            MoreLikeThis(movies: exampleMovies)
        }
    }
}
