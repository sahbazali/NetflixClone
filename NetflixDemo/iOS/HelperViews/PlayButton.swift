//
//  PlayButton.swift
//  NetflixDemo
//
//  Created by Ali Şahbaz on 1.06.2021.
//

import SwiftUI

struct PlayButton: View {
    var text: String
    var imageName: String
    var backgroundColor: Color = Color.white
    
    var action : () -> Void
    
    var body: some View {
        Button(action: action, label: {
            HStack {
                Spacer()
                
                Image(systemName: imageName)
                    .font(.headline)
                Text(text)
                    .font(.system(size: 16))
                    .bold()
                
                Spacer()
            }
            .padding(.vertical, 6)
            .foregroundColor(backgroundColor == .white ? .black : .white)
            .background(backgroundColor)
            .cornerRadius(3.0)
        })
    }
}

struct WhiteButton_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            Color(.black)
                .edgesIgnoringSafeArea(.all)
            
            PlayButton(text: "Play", imageName: "play.fill") {
                print("playClicked")
            }
        }
    }
}
