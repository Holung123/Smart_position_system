//
//  UserDetail.swift
//  Smart_position_system
//
//  Created by Holung Cheng on 4/9/2024.
//

import SwiftUI

struct UserDetail: View {
    let playlist: Playlist
    @State private var isPlaying = false
    @State private var volume = 0.5
    
    var body: some View {
        GeometryReader { proxy in
            ZStack {
                VStack {
                    Image(playlist.coverImage)
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(maxWidth: .infinity, maxHeight: proxy.size.width)
                        .cornerRadius(10)
                        .padding()
                    Text(playlist.title)
                        .font(.largeTitle)
                        .padding(.bottom, 10)
                    Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus quis massa et eros volutpat posuere a vel nisl.")
                        .font(.subheadline)
                        .foregroundColor(.gray)
                        .padding()
                    Spacer()
                }
              
            }
            .navigationTitle(playlist.title)
            .edgesIgnoringSafeArea(.bottom)
        }
    }
}

struct PlaylistDetailView_Previews: PreviewProvider {
    static var previews: some View {
        UserDetail(playlist: Playlist(title: "Chill Hits", coverImage: "chill"))
    }
}
