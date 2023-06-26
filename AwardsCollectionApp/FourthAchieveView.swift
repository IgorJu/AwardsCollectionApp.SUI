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
            
            //3/10 макс размера
            let nearLine = minimumSize * 0.3
            
            // 7/10 макс размера
            let farLine = minimumSize - nearLine
            
            //середина
            let middle = minimumSize / 2
            //MARK: - Circle
            Path { path in
                path.addEllipse(
                    in: CGRect(
                        x: middle / 2,
                        y: middle / 2 ,
                        width: width / 2,
                        height: height / 2
                    )
                )
            }
            .fill(.yellow)
            //MARK: - Triangle
            Path { path in
                path.move(to: CGPoint(x: middle, y: farLine * 1.02))
                path.addLine(to: CGPoint(x: nearLine, y: nearLine * 1.3))
                path.addLine(to: CGPoint(x: farLine , y: nearLine * 1.3))
                path.closeSubpath()
            }
            .stroke(Color(red: 0.94, green: 0.91, blue: 0.196), lineWidth: 6)
            PersonView()
            // MARK: - Head
            Path { path in
                path.addEllipse(
                    in: CGRect(
                        x: middle * 0.95,
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
        }

        }
    }



    struct FourthAchieveView_Previews: PreviewProvider {
        static var previews: some View {
            FourthAchieveView()
                .frame(width: 600, height: 600)
        }
    }

