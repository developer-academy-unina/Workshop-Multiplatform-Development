//
//  EntryView.swift
//  MultiplatformProject
//
//  Created by Luca Palmese for the Developer Academy on 09/02/22.
//

import SwiftUI

struct EntryView: View {
    
    // TODO: Set a variable only in iOS to recognize if the current device is an iPhone or an iPad
    
    var body: some View {
        
        /*
         
         TODO: Check this view's targets in the File Inspector on the right first. Then, set which view to show based on the device, using Conditional Compilation Blocks.
         
         iPhone: TabBarView
         iPad: NavigationView with SidebarView and LibraryView inside
         MacBook: NavigationView with SidebarView and LibraryView inside
         Apple TV: TabBarView
         Apple Watch: is it necessary? 👀
         
         */
        
        TabBarView()
    }
}


struct EntryView_Previews: PreviewProvider {
    static var previews: some View {
        // TODO: You may want to display this group preview only on iOS platforms
        Group {
            EntryView()
                .previewDevice("iPhone 13 Pro")
            EntryView()
                .previewDevice("iPad Pro (12.9-inch) (5th generation)")
                .previewInterfaceOrientation(.landscapeLeft)
        }
        // -----------------------------------------------------
    }
}
