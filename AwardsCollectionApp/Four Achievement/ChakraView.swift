//
//  ChakrasView.swift
//  AwardsCollectionApp
//
//  Created by Igor on 27.06.2023.
//

import SwiftUI

struct ChakraView: View {
    let firstColor: Color
    let secondColor: Color
    
    var body: some View {
        GeometryReader { geometry in
            let width = geometry.size.width
            let height = geometry.size.height
            
            ForEach(0..<3) { iteration in
                Rectangle()
                    .stroke(lineWidth: 0.5)
                    .fill(
                        LinearGradient(
                            gradient: Gradient(colors: [firstColor, secondColor]),
                            startPoint: UnitPoint(x: 0, y: 1),
                            endPoint: UnitPoint(x: 1, y: 0)
                        )
                    )
                    .rotationEffect(.degrees(Double(iteration) * 60))
                    .frame(width: width / 3, height: height / 3)
            }
        }
    }
}

struct ChakraView_Previews: PreviewProvider {
    static var previews: some View {
        ChakraView(firstColor: .pink, secondColor: .green)
            .frame(width: 400, height: 400)
    }
}
