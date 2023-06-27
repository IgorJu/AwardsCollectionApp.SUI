//
//  ChakrasView.swift
//  AwardsCollectionApp
//
//  Created by Igor on 27.06.2023.
//

import SwiftUI

struct ChakrasView: View {
    let middle: CGFloat
    let width: Double
    let height: Double
    
    var body: some View {
        ChakraView(firstColor: .red, secondColor: .indigo)
            .frame(width: width * 0.05, height: height * 0.05)
            .offset(x: middle * 0.99, y: middle * 0.65)
        ChakraView(firstColor: .indigo, secondColor: .blue)
            .frame(width: width * 0.05, height: height * 0.05)
            .offset(x: middle * 0.99, y: middle * 0.76)
        ChakraView(firstColor: .green, secondColor: .mint)
            .frame(width: width * 0.05, height: height * 0.05)
            .offset(x: middle * 0.99, y: middle * 0.87)
        ChakraView(firstColor: .green, secondColor: .yellow)
            .frame(width: width * 0.05, height: height * 0.05)
            .offset(x: middle * 0.99, y: middle * 0.96)
        ChakraView(firstColor: .orange, secondColor: .yellow)
            .frame(width: width * 0.05, height: height * 0.05)
            .offset(x: middle * 0.99, y: middle * 1.05)
        ChakraView(firstColor: .red, secondColor: .orange)
            .frame(width: width * 0.05, height: height * 0.05)
            .offset(x: middle * 0.99, y: middle * 1.14)
    }
}

struct ChakrasView_Previews: PreviewProvider {
    static var previews: some View {
        ChakrasView(middle: 100, width: 200, height: 200)
    }
}
