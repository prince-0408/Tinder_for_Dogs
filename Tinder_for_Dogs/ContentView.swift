//
//  ContentView.swift
//  Tinder_for_Dogs
//
//  Created by Anand on 07/04/22.
//

import SwiftUI

struct ContentView: View {
    init() {
        UITabBar.appearance().isHidden = true
    }
    var body: some View {
        TabBar()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
