//
//  SuggestedView.swift
//  MultiplatformProject
//
//  Created by Luca Palmese for the Developer Academy on 09/02/22.
//

import SwiftUI

struct SuggestedView: View {
    
    @StateObject var viewModel = SuggestedStore()
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(spacing: 8) {
                ForEach(viewModel.suggested) { suggestion in
                    SuggestedBannerView(category: suggestion.category, title: suggestion.title, artist: suggestion.artist, image: suggestion.image)
                }
            }
            .padding([.leading, .trailing], 18)
            .padding(.bottom, 20)
        }
    }
}


struct SuggestedView_Previews: PreviewProvider {
    static var previews: some View {
        SuggestedView()
    }
}
