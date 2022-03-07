//
//  TabBarView.swift
//  Shared
//
//  Created by Luca Palmese for the Developer Academy on 09/02/22.
//

import SwiftUI

struct TabBarView: View {
    
    var body: some View {
#if os(macOS)
        return view.frame(minWidth: 1420, minHeight: 1080)
#else
        return view
#endif
    }
    
    init() {
#if os(iOS)
        let tabBarAppeareance = UITabBarAppearance()
        tabBarAppeareance.shadowColor = .gray // For line separator of the tab bar
        tabBarAppeareance.backgroundColor = .systemGray5 // For background color
        UITabBar.appearance().standardAppearance = tabBarAppeareance
#endif
    }
    
    private var view: some View {
        TabView {
            LibraryView()
                .tabItem {
                    Image("LibraryIcon")
                        .renderingMode(.template)
                    Text("Library")
                }
                .tag(0)
            
            LibraryView()
                .tabItem {
                    Label("Listen Now", systemImage: "play.circle.fill")
                }
                .tag(1)
            
            LibraryView()
                .tabItem {
                    Label("Browse", systemImage: "square.grid.2x2.fill")
                }
                .tag(2)
            
            LibraryView()
                .tabItem {
                    Label("Radio", systemImage: "dot.radiowaves.left.and.right")
                }
                .tag(3)
            
            LibraryView()
                .tabItem {
                    Label("Search", systemImage: "magnifyingglass")
                }
                .tag(4)
        }
    }
}


struct TabBarView_Previews: PreviewProvider {
    static var previews: some View {
        TabBarView()
    }
}
