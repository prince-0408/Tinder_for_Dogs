//
//  ButtonView.swift
//  Tinder_for_Dogs
//
//  Created by Anand on 16/04/22.
//

import SwiftUI
struct ButtonView: View {
    var body: some View {
        Button(action: {
            print("Exit")
    }) {
            HStack(spacing: 8) {
                
                Text("Start")
                
                Image(systemName: "arrow.right.circle")
                    .imageScale(.large)
            }
            .padding(.horizontal, 16)
            .padding(.vertical, 10)
            .background(
                Capsule().strokeBorder(Color.white, lineWidth: 1.25)
                    .cornerRadius(20)
            )
        }
        .accentColor(Color.white)
    }
}

struct ButtonView_Previews: PreviewProvider {
    static var previews: some View {
        ButtonView()
            .preferredColorScheme(.dark)
    }
}
