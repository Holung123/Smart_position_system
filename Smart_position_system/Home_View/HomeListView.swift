//
//  HomeListView.swift
//  Smart_position_system
//
//  Created by Holung Cheng on 4/9/2024.
//

import SwiftUI

struct HomeListView: View {
    let playlist: Playlist

    var body: some View {
      NavigationLink(destination: UserDetail(playlist: playlist)) {
        HStack {
          Image(playlist.coverImage)
            .resizable()
            .aspectRatio(contentMode: .fill)
            .frame(width: 70, height: 70)
            .cornerRadius(5)
            .padding(.leading, 8)
          Text(playlist.title)
            .font(.headline)
            .lineLimit(1)
          Spacer()
        }
        .padding(.vertical, 8)
      }
    }
  }

struct PlaylistView_Previews: PreviewProvider {
    static var previews: some View {
        HomeListView(playlist: Playlist(title: "Chill Hits", coverImage: "chill"))
    }
}
