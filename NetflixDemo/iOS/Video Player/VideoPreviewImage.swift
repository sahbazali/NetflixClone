//
//  VideoPreviewImage.swift
//  NetflixDemo
//
//  Created by Ali Şahbaz on 6.06.2021.
//

import SwiftUI
import KingfisherSwiftUI

struct VideoPreviewImage: View {
    var imageUrl: URL
    var videoURL: URL
    
    @State private var showingVideoPlayer = false
    
    var body: some View {
        ZStack {
            KFImage(imageUrl)
                .resizable()
                .aspectRatio(contentMode: .fill)
            Button(action: {
                showingVideoPlayer = true
            }, label: {
                Image(systemName: "play.circle")
                    .foregroundColor(.white)
                    .font(.system(size: 40))
            })
            .sheet(isPresented: $showingVideoPlayer, content: {
                SwiftUIVideoView(url: videoURL)
            })
        }
    }
}

struct VideoPreviewImage_Previews: PreviewProvider {
    static var previews: some View {
        VideoPreviewImage(imageUrl: exampleImageURL, videoURL: exampleVideoURL)
    }
}
