//
//  FourthAchieveView.swift
//  AwardsCollectionApp
//
//  Created by Igor on 26.06.2023.
//

import SwiftUI

struct FourthAchieveView: View {
    
    var body: some View {
        GeometryReader { geometry in
            let width = geometry.size.width
            let height = geometry.size.height
            let minimumSize = min(width, height)
            let nearLine = minimumSize * 0.3
            let farLine = minimumSize - nearLine
            let middle = minimumSize / 2
            CircleAndTriangle(width: width, height: height, middle: middle, nearLine: nearLine, farLine: farLine)
            PersonView()
            // MARK: - Head
            Path { path in
                path.addEllipse(
                    in: CGRect(
                        x: middle * 0.947,
                        y: middle * 0.6,
                        width: width * 0.06,
                        height: height * 0.09
                    )
                )
            }
            .fill(Color(red: 0.89, green: 0.71, blue: 0.45))
            //legs
            Path { path in
                path.addRoundedRect(
                    in: CGRect(
                        x: middle * 1.14,
                        y: middle * 0.9 ,
                        width: width * 0.033,
                        height: height * 0.14
                    ),
                    cornerSize: CGSize(width: width * 0.7, height: height * 0.7)
                )
            }
            .fill(.white)
            .rotationEffect(.degrees(100))
            Path { path in
                path.addRoundedRect(
                    in: CGRect(
                        x: middle * 0.79,
                        y: middle * 0.9 ,
                        width: width * 0.033,
                        height: height * 0.14
                    ),
                    cornerSize: CGSize(width: width * 0.7, height: height * 0.7)
                )
            }
            .fill(.white)
            .rotationEffect(.degrees(258))
            
            ChakraView(firstColor: .pink, secondColor: .yellow)
                .frame(width: width * 0.05, height: height * 0.05)
                .offset(x: middle * 0.99, y: middle * 0.55)
            ChakrasView(middle: middle, width: width, height: height)
            FingersView(middle: middle)
        }
        
    }
}



    struct FourthAchieveView_Previews: PreviewProvider {
        static var previews: some View {
            FourthAchieveView()
                .frame(width: 200, height: 200)
        }
    }

