//
//  EpisodesView.swift
//  BuildNetflix
//
//  Created by Xiaochun Shen on 2020/10/12.
//

import SwiftUI

struct EpisodesView: View {
    var episodes: [Episode]
    @Binding var showSeasonPicker: Bool
    @Binding var selectedSeason: Int
    
    func getEpisodes(forSeason season: Int) -> [Episode] {
        return episodes.filter({ $0.season == season })
    }
    
    var body: some View {
        VStack {
            // Season Picker
            HStack {
                Button(action: {
                    //
                }, label: {
                    Group{
                        Text("Season 1")
                        Image(systemName: "chevron.down")
                    }
                    .font(.system(size: 16))
            })
                Spacer()
            }
           
            
            // Episodes list
            ForEach(getEpisodes(forSeason: selectedSeason)) { episode in
                Text("Test")
            }
            
            Spacer()
        }
        .foregroundColor(.white)
    }
}

struct EpisodesView_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            Color.black
                .edgesIgnoringSafeArea(.all)
            
            EpisodesView(episodes: allExampleEpisodes, showSeasonPicker: .constant(false), selectedSeason: .constant(1))
        }
    }
}
