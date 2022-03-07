//
//  SuggestedStore.swift
//  MultiplatformProject
//
//  Created by Luca Palmese for the Developer Academy on 09/02/22.
//

import SwiftUI

class SuggestedStore: ObservableObject {
    @Published var suggested: [MusicEntry] = [
        MusicEntry(
            category: "New single + pre-add now",
            title: "Materia (Terra)",
            artist: "Marco Mengoni",
            imageName: "Suggested0"
        ),
        MusicEntry(
            category: "Spatial audio",
            title: "Hear it like never before",
            artist: "Laura Pausini",
            imageName: "Suggested1"
        ),
        MusicEntry(
            category: "Album of the Month",
            title: "30",
            artist: "Adele",
            imageName: "Suggested2"
        ),
        MusicEntry(
            category: "Trending now",
            title: "Sanremo 2022",
            artist: "Various Artists",
            imageName: "Suggested3"
        )
    ]
}
