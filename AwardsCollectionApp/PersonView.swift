//
//  PersonView.swift
//  AwardsCollectionApp
//
//  Created by Igor on 26.06.2023.
//

import SwiftUI

struct PersonView: View {
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
            Path { path in
                path.addRoundedRect(
                    in: CGRect(
                        x: middle * 0.93,
                        y: nearLine * 1.315 ,
                        width: width * 0.08,
                        height: height * 0.2
                    ),
                    cornerSize: CGSize(width: width * 0.7, height: height * 0.7)
                )
            }
            .fill(.white)
            //MARK: - sheya
            Path { path in
                path.addRoundedRect(
                    in: CGRect(
                        x: middle * 0.99,
                        y: middle * 0.76,
                        width: width * 0.020,
                        height: height * 0.030
                    ),
                    cornerSize: CGSize(width: width, height: height)
                )
            }
            .fill(Color(red: 0.89, green: 0.65, blue: 0.3))
            //MARK: - Hands
            //left
            Path { path in
                path.addRoundedRect(
                    in: CGRect(
                        x: middle * 0.87,
                        y: middle * 0.83,
                        width: width * 0.02,
                        height: height * 0.1
                    ),
                    cornerSize: CGSize(width: width, height: height)
                )
            }
            .fill(Color(red: 0.89, green: 0.65, blue: 0.3))
            .rotationEffect(.degrees(12))
            
            //right
            Path { path in
                path.addRoundedRect(
                    in: CGRect(
                        x: middle * 1.11,
                        y: middle * 0.834,
                        width: width * 0.02,
                        height: height * 0.1
                    ),
                    cornerSize: CGSize(width: width, height: height)
                )
            }
            .fill(Color(red: 0.89, green: 0.65, blue: 0.3))
            .rotationEffect(.degrees(-12))
            // left shoulder
            Path { path in
                path.move(to: CGPoint(x: middle * 0.97, y: middle * 0.801))
                path.addLine(to: CGPoint(x: middle * 0.92, y: middle * 0.81))
                path.addLine(to: CGPoint(x: middle * 0.92 , y: middle * 0.9))
                path.closeSubpath()
            }
            .fill(Color(red: 0.89, green: 0.65, blue: 0.3))
            
            //right Shoulder
            Path { path in
                path.move(to: CGPoint(x: middle * 1.05, y: middle * 0.801))
                path.addLine(to: CGPoint(x: middle * 1.1, y: middle * 0.81))
                path.addLine(to: CGPoint(x: middle * 1.1 , y: middle * 0.9))
                path.closeSubpath()
            }
            .fill(Color(red: 0.89, green: 0.65, blue: 0.3))
            // left arm
            Path { path in
                path.move(to: CGPoint(x: middle * 0.9, y: middle * 1.005))
                path.addLine(to: CGPoint(x: middle * 0.81, y: middle * 1.11))
                path.addLine(to: CGPoint(x: middle * 0.81, y: middle * 1.08))
                path.addLine(to: CGPoint(x: middle * 0.88, y: middle * 0.95))
            }
            .fill(Color(red: 0.89, green: 0.65, blue: 0.3))
            
            //righrArm
            Path { path in
                path.move(to: CGPoint(x: middle * 1.113, y: middle * 1))
                path.addLine(to: CGPoint(x: middle * 1.19, y: middle * 1.11))
                path.addLine(to: CGPoint(x: middle * 1.19, y: middle * 1.08))
                path.addLine(to: CGPoint(x: middle * 1.12, y: middle * 0.90))
            }
            .fill(Color(red: 0.89, green: 0.65, blue: 0.3))
            
            //kisti
            Path { path in
                path.move(to: CGPoint(x: middle * 0.81, y: middle * 1.08))
                path.addLine(to: CGPoint(x: middle * 0.75, y: middle * 1.05))
                path.addLine(to: CGPoint(x: middle * 0.74, y: middle * 1.06))
                path.addLine(to: CGPoint(x: middle * 0.81, y: middle * 1.11))
            }
            .fill(Color(red: 0.89, green: 0.65, blue: 0.3))
            
            Path { path in
                path.move(to: CGPoint(x: middle * 1.19, y: middle * 1.08))
                path.addLine(to: CGPoint(x: middle * 1.25, y: middle * 1.05 ))
                path.addLine(to: CGPoint(x: middle * 1.26, y: middle * 1.06))
                path.addLine(to: CGPoint(x: middle * 1.19, y: middle * 1.11))
            }
            .fill(Color(red: 0.89, green: 0.65, blue: 0.3))
            
          
        }
    }
}

    


struct PersonView_Previews: PreviewProvider {
    static var previews: some View {
        PersonView()
            .frame(width: 600, height: 600)
    }
}

