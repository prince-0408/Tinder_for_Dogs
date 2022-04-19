//
//  OnboardingView.swift
//  Tinder_for_Dogs
//
//  Created by Anand on 16/04/22.
//

import SwiftUI

struct OnboardingView: View {
    
    var dogs: [Dogs] = DogData
    var body: some View {
        TabView {
            ForEach(dogs[0..<3]) {item in
                DogsCardView(dogs: item)
            }
        }
        .tabViewStyle(PageTabViewStyle())
        .padding(.vertical, 20)
    }
}

struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView(dogs: DogData)
    }
}
