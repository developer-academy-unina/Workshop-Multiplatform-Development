//
//  EntryView.swift
//  MultiplatformProject
//
//  Created by Luca Palmese for the Developer Academy on 09/02/22.
//

import SwiftUI

struct EntryView: View {
    
    // MARK: This chunk of code is only built on iOS devices. It sets a variable with the Interface Size Class, which is .compact for the iPhone and .regular for the iPad
#if os(iOS)
    @Environment(\.horizontalSizeClass) var horizontalSizeClass: UserInterfaceSizeClass?
#endif
    // -----------------------------------------------------------------------------
    
    
    var body: some View {
        
        // MARK: Here we display different views based on the operative system and device we're on
#if os(iOS)
        if horizontalSizeClass == .compact {
            TabBarView()
        } else {
            NavigationView {
                SideBarView()
                LibraryView()
            }
        }
#elseif os(macOS)
        NavigationView {
            SideBarView()
                .frame(minWidth: 200)
            LibraryView()
        }
#elseif os(tvOS)
        TabBarView()
#endif
        // ------------------------------------------------------------------------
        
    }
}


struct EntryView_Previews: PreviewProvider {
    static var previews: some View {
#if os(iOS)
        Group {
            EntryView()
                .previewDevice("iPhone 13 Pro")
            EntryView()
                .previewDevice("iPad Pro (12.9-inch) (5th generation)")
                .previewInterfaceOrientation(.landscapeLeft)
        }
#else
        EntryView()
#endif
    }
}
