//
//  DogModel.swift
//  Tinder_for_Dogs
//
//  Created by Anand on 16/04/22.
//

import SwiftUI

struct Dogs: Identifiable {
    var id = UUID()
    var title: String
    var image: String
    var gradientColors: [Color]
    var description: String
}
