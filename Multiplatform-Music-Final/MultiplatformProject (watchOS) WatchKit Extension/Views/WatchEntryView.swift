//
//  WatchEntryView.swift
//  MultiplatformProject (watchOS) WatchKit Extension
//
//  Created by Luca Palmese for the Developer Academy on 09/02/22.
//

import SwiftUI
import WatchKit

struct WatchEntryView: View {
    
    @State private var selectedOption = 0
    
    var body: some View {
        NavigationView {
            ScrollView(.vertical) {
                Text("Choose a music source to play from.")
                    .font(.system(size: 16))
                    .multilineTextAlignment(.center)
                    .foregroundColor(.secondary)
                HStack(spacing: 0) {
                    WatchSegmentedButton(selectedOption: $selectedOption, imageSystemName: "iphone", tag: 0)
                    WatchSegmentedButton(selectedOption: $selectedOption, imageSystemName: "applewatch.side.right", tag: 1)
                }
                .mask(RoundedRectangle(cornerRadius: 8))
                
                .padding(.top, 2)
                .padding(.bottom, 15)
                VStack(alignment: .leading) {
                    WatchButton("Now Playing", imageSystemName: "chart.bar.xaxis", action: {})
                    WatchButton("My Music", imageSystemName: "music.note", action: {})
                }
                .padding(.bottom, 25)
            }
            .padding()
            .navigationTitle("Music")
        }
    }
}

struct WatchEntryView_Previews: PreviewProvider {
    static var previews: some View {
        WatchEntryView()
    }
}
