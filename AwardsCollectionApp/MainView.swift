//
//  MainView.swift
//  AwardsCollectionApp
//
//  Created by Alexey Efimov on 17.06.2021.
//

import SwiftUI

struct MainView: View {
    @State private var awardIsShowing = false
    @State private var angle = 0.0
    var body: some View {
        VStack {
            Button(action: buttonAction) {
                Text(awardIsShowing ? "Hide Award" : "Show Award")
                Spacer()
                Image(systemName: "chevron.up.square")
                    .rotationEffect(.degrees(awardIsShowing ? 0 : 180))
                    .scaleEffect(awardIsShowing ? 2 : 1)
            }
            
            Spacer()
            
            if awardIsShowing {
                FourthAchieveView()
                    .frame(width: 400, height: 400)
                    .rotationEffect(.degrees(angle))
                    .onAppear {
                        withAnimation(
                            Animation
                                .linear(duration: 5)
                                .repeatForever(autoreverses: false)
                        ) {
                            angle = 360
                        }
                    }
                    .transition(.customTransition)
            }
            
            Spacer()
        }
        .font(.headline)
        .padding()
    }
    
    private func buttonAction() {
        withAnimation {
            awardIsShowing.toggle()
        }
    }
}

extension AnyTransition {
    static var customTransition: AnyTransition {
        let insertion = AnyTransition.opacity
        let removal = AnyTransition.push(from: .top)
        
        return .asymmetric(insertion: insertion, removal: removal)
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
