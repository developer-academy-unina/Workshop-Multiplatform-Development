//
//  FooterView.swift
//  MultiplatformProject
//
//  Created by Luca Palmese for the Developer Academy on 09/02/22.
//

import SwiftUI

struct FooterView: View {
    var body: some View {
        VStack(spacing: 0) {
            Spacer()
            HStack {
                Image(systemName: "music.note")
                    .foregroundColor(.secondary)
                    .frame(width: 48, height: 48)
                    .background(.gray.opacity(0.2))
                    .mask(RoundedRectangle(cornerRadius: 7))
                    .overlay(RoundedRectangle(cornerRadius: 7).stroke(.gray.opacity(0.3), lineWidth: 1))
                Text("Not Playing")
                    .font(.system(size: 18))
                    .offset(x: 10, y: 0)
                Spacer()
                Button {
                    #if os(iOS)
                    let impact = UIImpactFeedbackGenerator(style: .medium)
                    impact.impactOccurred()
                    #endif
                } label: {
                    Image(systemName: "play.fill")
                        .frame(width: 21, height: 27)
                        .foregroundColor(.black)
                }
                .buttonStyle(PlainButtonStyle())
                Image(systemName: "forward.fill")
                    .frame(width: 39, height: 27)
                    .foregroundColor(.gray)
            }
            .padding([.leading, .trailing], 18)
            .frame(minWidth: 377, idealWidth: 377, maxWidth: .infinity, minHeight: 65, idealHeight: 65, maxHeight: 65, alignment: .center)
            .background(Color(red: 235/255, green: 235/255, blue: 235/255))
        }
    }
}


struct FooterView_Previews: PreviewProvider {
    static var previews: some View {
        FooterView()
    }
}
