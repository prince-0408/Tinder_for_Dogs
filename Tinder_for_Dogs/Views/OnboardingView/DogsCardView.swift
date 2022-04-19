//
//  DogsCardView.swift
//  Tinder_for_Dogs
//
//  Created by Anand on 16/04/22.
//

import SwiftUI

struct DogsCardView: View {
    
    var dogs: Dogs
    
    @State private var isAnimation: Bool = false
    var body: some View {
        ZStack {
            VStack (spacing: 20) {
                Image(dogs.image)
                .resizable()
                .scaledToFit()
                .frame(width: 350, height: 350, alignment: .center)
                .shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 0.45), radius: 10, x: 5, y: 5)
                .scaleEffect(isAnimation ? 1.0 : 0.6)
                
                Text(dogs.title)
                    .foregroundColor(Color.black)
                    .multilineTextAlignment(.center)
                    .padding(.horizontal, 16)
                    .frame(maxWidth: 480)
                
                Text(dogs.description)
                    .foregroundColor(Color.white)
                    .multilineTextAlignment(.center)
                    .padding(.horizontal, 16)
                    .frame(maxWidth: 480)
                
            ButtonView()
            }
        } //VSTACK
        .onAppear{
            withAnimation(.easeInOut(duration: 0.5)) {
                isAnimation = true
            }
        }
        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .center)
        .background(LinearGradient(gradient: Gradient(colors: dogs.gradientColors), startPoint: .top, endPoint: .bottom))
        .cornerRadius(20)
        .padding(.horizontal, 20)
       
    }
}

struct DogsCardView_Previews: PreviewProvider {
    static var previews: some View {
        DogsCardView(dogs: DogData[2])
    }
}
