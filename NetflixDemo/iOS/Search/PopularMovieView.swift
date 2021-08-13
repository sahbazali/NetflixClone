//
//  PopularMovieView.swift
//  NetflixDemo
//
//  Created by Ali Şahbaz on 31.07.2021.
//

import SwiftUI
import KingfisherSwiftUI

struct PopularMovieView: View {
    var movie: Movie
    
    @Binding var moviewDetailToShow: Movie?
    
    var body: some View {
        GeometryReader { proxy in
            HStack {
                KFImage(movie.thumbnailURL)
                    .resizable()
                    .frame(width: proxy.size.width / 3)
                    .padding(.leading, 3)
                
                Text(movie.name)
                
                Spacer()
                
                Button(action: {
                    
                }, label: {
                    Image(systemName: "arrowtriangle.right.fill")
                })
                .padding(.trailing, 20)
            }
            .foregroundColor(.white)
            .onTapGesture {
                self.moviewDetailToShow = movie
            }
        }
    }
}

struct PopularMovieView_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            Color.black
                .edgesIgnoringSafeArea(.all)
            PopularMovieView(movie: exampleMovie1, moviewDetailToShow: .constant(nil))
                .frame(height: 75)
                .padding(.horizontal, 50)
        }
    }
}
