//
//  Tinder_for_DogsApp.swift
//  Tinder_for_Dogs
//
//  Created by Anand on 07/04/22.
//

import SwiftUI

@main
struct Tinder_for_DogsApp: App {
    
    @AppStorage ("isOnboarding") var isOnboarding: Bool = true
    
    var body: some Scene {
        WindowGroup {
            if isOnboarding {
            OnboardingView()
            } else {
                ContentView()
            }
        }
    }
}
