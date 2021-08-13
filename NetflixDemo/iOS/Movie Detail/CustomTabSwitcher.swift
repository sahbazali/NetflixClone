//
//  CustomTabSwitcher.swift
//  NetflixDemo
//
//  Created by Ali Şahbaz on 4.06.2021.
//

import SwiftUI

struct CustomTabSwitcher: View {
    @State private var currentTab: CustomTab = .episodes
    var tabs: [CustomTab]
    var movie: Movie
    
    @Binding var showSeasonPicker: Bool
    @Binding var selectedSeason: Int
    
    
    func widthForTab(_ tab: CustomTab) -> CGFloat {
        return tab.rawValue.widthOfString(usingFont: .systemFont(ofSize: 16, weight: .bold))
    }
    
    var body: some View {
        VStack {
            //Custom Picker
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 20) {
                    ForEach(tabs, id: \.self) { tab in
                        VStack {
                            //Red Bar
                            Rectangle()
                                .frame(width:widthForTab(tab), height: 6)
                                .foregroundColor(tab == currentTab ? .red : .clear)
                                .animation(.linear(duration: 0.5))
                            
                            //Button
                            Button(action: {
                                currentTab = tab
                            }, label: {
                                Text(tab.rawValue)
                                    .font(.system(size: 16, weight: .bold))
                                    .foregroundColor(tab == currentTab ? .white : .gray)
                            })
                            .buttonStyle(PlainButtonStyle())
                            .frame(width:widthForTab(tab), height: 30)
                            
                        }
                    }
                }
            }
            switch currentTab {
            case .episodes:
                EpisodesView(episodes: movie.episodes ?? [], showSeasonPicker: $showSeasonPicker, selectedSeason: $selectedSeason)
            case .trailers:
                TrailerList(trailers: movie.trailers)
            case .more:
                MoreLikeThis(movies: movie.moreLikeThisMovies)
            }
        }
        .foregroundColor(.white)
    }
}

struct CustomTabSwitcher_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            Color.black
                .edgesIgnoringSafeArea(.all)
            CustomTabSwitcher(tabs: [.episodes, .trailers, .more], movie: exampleMovie1, showSeasonPicker: .constant(false), selectedSeason: .constant(1))
        }
    }
}

enum CustomTab: String {
    case episodes = "EPISODES"
    case trailers = "TRAILERS & MORE"
    case more = "MORE LIKE THIS"
}
