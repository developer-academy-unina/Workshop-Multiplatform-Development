//
//  Playlist.swift
//  MultiplatformProject
//
//  Created by Luca Palmese for the Developer Academy on 09/02/22.
//

import Foundation
import SwiftUI

struct Playlist: Identifiable {
    
    var id = UUID()
    var imageName: String
    var image: Image {
        Image(imageName)
    }
    
    var name: String
    var category: String
    
}
