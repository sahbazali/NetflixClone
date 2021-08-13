//
//  StandardHomeMovie.swift
//  NetflixDemo
//
//  Created by Ali Şahbaz on 31.05.2021.
//

import SwiftUI
import KingfisherSwiftUI

struct StandardHomeMovie: View {
    var movie: Movie
    
    var body: some View {
        KFImage(movie.thumbnailURL)
            .resizable()
            .scaledToFill()
    }
}

struct StandardHomeView_Previews: PreviewProvider {
    static var previews: some View {
        StandardHomeMovie(movie: exampleMovie1)
    }
}
