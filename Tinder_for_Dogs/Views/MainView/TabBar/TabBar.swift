//
//  TabBar.swift
//  Tinder_for_Dogs
//
//  Created by Anand on 19/04/22.
//

import SwiftUI

struct TabBar: View {
    @State var current = "Home"
    var body: some View {
        ZStack(alignment: Alignment(horizontal: .center, vertical: .bottom)) {
            //MARK:- TABVIEW
            TabView(selection: $current) {
                HomeView()
                    .tag("Home")
                SlideView()
                    .tag("Slide")
                MessageView()
                    .tag("Match")
                ProfileView()
                    .tag("Profile")
            }
            //MARK: - TAB Button
            HStack(spacing: 0) {
                TabButton(title: "Home", image: "home", selected: $current)
                Spacer(minLength: 0)
                
                TabButton(title: "Slide", image: "paws", selected: $current)
                Spacer(minLength: 0)
                
                TabButton(title: "Match", image: "send", selected: $current)
                Spacer(minLength: 0)
                
                TabButton(title: "Profile", image: "user", selected: $current)
                Spacer(minLength: 0)
                
            }
            .padding(.vertical, 12)
            .padding(.horizontal)
            .background(LinearGradient(gradient: Gradient(colors: [Color("Color16"),Color("Color14")]), startPoint: .leading, endPoint: .trailing))
            .clipShape(Capsule())
            .padding(.horizontal, 25)
        }
    }
}

struct TabBar_Previews: PreviewProvider {
    static var previews: some View {
        TabBar()
    }
}
