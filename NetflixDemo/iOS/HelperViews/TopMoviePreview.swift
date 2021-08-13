//
//  TopMoviePreview.swift
//  NetflixDemo
//
//  Created by Ali Şahbaz on 1.06.2021.
//

import SwiftUI
import KingfisherSwiftUI

struct TopMoviePreview: View {
    var movie: Movie
    
    func isCategoryLast(_ cat: String) -> Bool {
        return movie.categories.last == cat
    }
    
    var body: some View {
        ZStack {
            KFImage(movie.thumbnailURL)
                .resizable()
                .scaledToFill()
                .clipped()
            
            VStack {
                Spacer()
                HStack {
                    ForEach(movie.categories, id: \.self) { category in
                        HStack {
                            Text(category)
                                .font(.footnote)
                            if !isCategoryLast(category) {
                                Image(systemName: "circle.fill")
                                    .foregroundColor(.blue)
                                    .font(.system(size: 3))
                            }
                        }
                    }
                }.padding(.bottom, 7)
                
                HStack {
                    Spacer()
                    
                    SmallVerticalButton(text: "My List", isOnImage: "checkmark", isOffImage: "plus", isOn: true) {
                        //TODO: handle button
                    }
                    
                    Spacer()
                    
                    PlayButton(text: "Play", imageName: "play.fill") {
                        //TODO
                    }
                    .frame(width : 120)
                    
                    Spacer()
                    
                    SmallVerticalButton(text: "Info", isOnImage: "info.circle", isOffImage: "info.circle", isOn: true) {
                        //TODO: handle button
                    }
                    
                    Spacer()
                }
            }.background(
                LinearGradient.blackOpacityGradient
            )
            .padding(.top, 250)
            
        }
        .foregroundColor(.white)
    }
}

struct TopMoviePreview_Previews: PreviewProvider {
    static var previews: some View {
        TopMoviePreview(movie: exampleMovie5)
    }
}
