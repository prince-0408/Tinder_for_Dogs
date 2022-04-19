//
//  MessageView.swift
//  Tinder_for_Dogs
//
//  Created by Anand on 20/04/22.
//

import SwiftUI

struct MessageView: View {
    var body: some View {
        Image("dog2")
            .scaledToFill()
            .aspectRatio(contentMode: .fit)
    }
}

struct MessageView_Previews: PreviewProvider {
    static var previews: some View {
        MessageView()
    }
}
