//
//  AppleMusicButton.swift
//  MultiplatformProject
//
//  Created by Luca Palmese for the Developer Academy on 09/02/22.
//

import SwiftUI

struct AppleMusicButton: View {
    
    @ScaledMetric var size: CGFloat = 1
    
    var body: some View {
        VStack(alignment: .leading) {
            Button {
                #if os(iOS)
                let feedback = UINotificationFeedbackGenerator()
                feedback.notificationOccurred(.success)
                #endif
            } label: {
                VStack(alignment: .center) {
                    Text(" Music")
                        .font(.system(size: 23))
                        .fontWeight(.bold)
                    Text("Try it now and get 3 months free")
                        .font(.system(size: 16.5))
                }
                .frame(minWidth: 377*size, idealWidth: 377, maxWidth: .infinity, minHeight: 64, idealHeight: 64, maxHeight: 64, alignment: .center)
                .foregroundColor(.white)
                .background(.pink)
                .cornerRadius(16)
                .padding(.top, 15)
            }
            .buttonStyle(PlainButtonStyle())
        }
    }
}


struct AppleMusicButton_Previews: PreviewProvider {
    static var previews: some View {
        AppleMusicButton()
    }
}
