//
//  PreOrdersView.swift
//  MultiplatformProject
//
//  Created by Luca Palmese on 10/02/22.
//

import SwiftUI

struct PreOrdersView: View {
    
    @StateObject var viewModel = PreOrderStore()
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(alignment: .top, spacing: 8) {
                ForEach(viewModel.preOrders) { preOrder in
                    EntryCellView(image: preOrder.image, title: preOrder.title, subtitle: preOrder.artist)
                }
            }
            .padding([.leading, .trailing], 18)
            .padding(.bottom, 25)
        }
    }
}

struct PreOrdersView_Previews: PreviewProvider {
    static var previews: some View {
        PreOrdersView()
    }
}
