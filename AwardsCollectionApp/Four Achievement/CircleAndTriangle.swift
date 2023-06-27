//
//  CircleAndTriangle.swift
//  AwardsCollectionApp
//
//  Created by Igor on 27.06.2023.
//

import SwiftUI

struct CircleAndTriangle: View {
    let width: Double
    let height: Double
    let middle: CGFloat
    let nearLine: CGFloat
    let farLine: CGFloat
    
    var body: some View {
            //MARK: - Circle
            Path { path in
                path.addEllipse(
                    in: CGRect(
                        x:  middle * 0.3,
                        y: middle * 0.3,
                        width: width * 0.7,
                        height: height * 0.7
                    )
                )
            }
            .fill(
                LinearGradient(
                    gradient: Gradient(colors: [
                        Color(
                            red: 0.1,
                            green: 0.1,
                            blue: 0.3
                        ),
                        Color(
                            red: 0.015,
                            green: 0.85,
                            blue: 1
                        )
                    ]),
                    startPoint: UnitPoint(x: 0, y: 1),
                    endPoint: UnitPoint(x: 1, y: 0)
                )
            )
            Path { path in
                path.addEllipse(
                    in: CGRect(
                        x: middle * 0.3 ,
                        y: middle * 0.3,
                        width: width * 0.7,
                        height: height * 0.7
                    )
                )
            }
            .stroke(Color(red: 0.99, green: 0.77, blue: 0.59), lineWidth: 3)
            
            
            //MARK: - Triangle
            Path { path in
                path.move(to: CGPoint(x: middle, y: farLine * 1.02))
                path.addLine(to: CGPoint(x: nearLine, y: nearLine * 1.3))
                path.addLine(to: CGPoint(x: farLine , y: nearLine * 1.3))
                path.closeSubpath()
            }
            .fill(
                LinearGradient(
                    gradient: Gradient(colors: [
                        Color(
                            red: 0.1,
                            green: 0.1,
                            blue: 0.4
                        ),
                        Color(
                            red: 0.2,
                            green: 0.73,
                            blue: 0.89
                        )
                    ]),
                    startPoint: UnitPoint(x: 0, y: 1),
                    endPoint: UnitPoint(x: 1, y: 0)
                )
            )
            //stroke triangle
            Path { path in
                path.move(to: CGPoint(x: middle, y: farLine * 1.02))
                path.addLine(to: CGPoint(x: nearLine, y: nearLine * 1.3))
                path.addLine(to: CGPoint(x: farLine , y: nearLine * 1.3))
                path.closeSubpath()
            }
            .stroke(Color(red: 0.99, green: 0.77, blue: 0.59), lineWidth: 2)
        }
    }


struct CircleAndTriangle_Previews: PreviewProvider {
    static var previews: some View {
        CircleAndTriangle(width: 200, height: 200, middle: 100, nearLine: 100, farLine: 300)
    }
}
