//
//  SideBarView.swift
//  MultiplatformProject
//
//  Created by Luca Palmese for the Developer Academy on 09/02/22.
//

import SwiftUI

struct SideBarView: View {
    
    enum ScreenTag: Hashable {
        case listenNow, radio, recentlyAdded, artists, albums, songs, iTunesStore, allPlaylists
    }
    
    @State var selection: ScreenTag? = .listenNow
    @State var searchText: String = ""
    
    var body: some View {
        List(selection: $selection) {
            Section(header:
                        Text("Apple Music")
                        .font(.system(size: 15, weight: .semibold))
                        .foregroundColor(.secondary)
            ) {
                NavigationLink(
                    destination: LibraryView(),
                    tag: ScreenTag.listenNow,
                    selection: $selection,
                    label: {
                        Label("Listen Now", systemImage: "play.circle")
                    }
                )
                NavigationLink(
                    destination: LibraryView(),
                    tag: ScreenTag.radio,
                    selection: $selection,
                    label: {
                        Label("Radio", systemImage: "dot.radiowaves.left.and.right")
                    }
                )
            }
            Section(header:
                        Text("Library")
                        .font(.system(size: 15, weight: .semibold))
                        .foregroundColor(.secondary)
            ) {
                NavigationLink(
                    destination: LibraryView(),
                    tag: ScreenTag.recentlyAdded,
                    selection: $selection,
                    label: {
                        Label("Recently Added", systemImage: "clock")
                    }
                )
                NavigationLink(
                    destination: LibraryView(),
                    tag: ScreenTag.artists,
                    selection: $selection,
                    label: {
                        Label("Artists", systemImage: "music.mic")
                    }
                )
                NavigationLink(
                    destination: LibraryView(),
                    tag: ScreenTag.albums,
                    selection: $selection,
                    label: {
                        Label("Albums", systemImage: "square.stack")
                    }
                )
                NavigationLink(
                    destination: LibraryView(),
                    tag: ScreenTag.songs,
                    selection: $selection,
                    label: {
                        Label("Songs", systemImage: "music.note")
                    }
                )
            }
            Section(header:
                        Text("Store")
                        .font(.system(size: 15, weight: .semibold))
                        .foregroundColor(.secondary)
            ) {
                NavigationLink(
                    destination: LibraryView(),
                    tag: ScreenTag.iTunesStore,
                    selection: $selection,
                    label: {
                        Label("iTunes Store", systemImage: "star")
                            .accentColor(.purple)
                    }
                )
            }
            Section(header:
                        Text("Playlists")
                        .font(.system(size: 15, weight: .semibold))
                        .foregroundColor(.secondary)
            ) {
                NavigationLink(
                    destination: LibraryView(),
                    tag: ScreenTag.allPlaylists,
                    selection: $selection,
                    label: {
                        Label("All Playlists", systemImage: "square.grid.3x3")
                            .accentColor(.gray)
                    }
                )
            }
        }
#if os(iOS)
        .searchable(text: $searchText, placement: .navigationBarDrawer(displayMode: .always))
#else
        .searchable(text: $searchText)
#endif
        .navigationTitle("Music")
        .listStyle(SidebarListStyle())
    }
}

struct SideBarView_Previews: PreviewProvider {
    static var previews: some View {
        SideBarView()
    }
}
