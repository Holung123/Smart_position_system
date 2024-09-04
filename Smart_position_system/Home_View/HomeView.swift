//
//  HomeView.swift
//  Smart_position_system
//
//  Created by Holung Cheng on 4/9/2024.
//

import SwiftUI

struct HomeView: View {
    @State private var playlists = [
        Playlist(title: "Chill Hits", coverImage: "chill"),
        Playlist(title: "Indie Mix", coverImage: "indie"),
        Playlist(title: "Hip Hop Vibes", coverImage: "hiphop"),
        Playlist(title: "Pop Party", coverImage: "pop")
      ]

      var body: some View {
        List {
          ForEach(playlists) { playlist in
            HomeListView(playlist: playlist)
          }
        }
        .navigationTitle("My Playlists")
        .navigationBarItems(trailing: EditButton())
      }
    
  
}

struct PlaylistTableView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
