//
//  FingersView.swift
//  AwardsCollectionApp
//
//  Created by Igor on 27.06.2023.
//

import SwiftUI

struct FingersView: View {
    let middle: Double
    
    var body: some View {
        
        Path { path in
            path.move(to: CGPoint(x: middle * 0.805, y: middle * 1.047))
            path.addLine(to: CGPoint(x: middle * 0.789, y: middle * 1.069))
            path.addLine(to: CGPoint(x: middle * 0.799, y: middle * 1.079))
        }
        .fill(Color(red: 0.89, green: 0.65, blue: 0.3))
        
        Path { path in
            path.move(to: CGPoint(x: middle * 0.804, y: middle * 1.047))
            path.addLine(to: CGPoint(x: middle * 0.817, y: middle * 1.069))
            path.addLine(to: CGPoint(x: middle * 0.813, y: middle * 1.086))
        }
        .fill(Color(red: 0.89, green: 0.65, blue: 0.3))
        
        Path { path in
            path.move(to: CGPoint(x: middle * 1.215, y: middle * 1.069))
            path.addLine(to: CGPoint(x: middle * 1.205, y: middle * 1.075))
            path.addLine(to: CGPoint(x: middle * 1.195, y: middle * 1.047))
        }
        .fill(Color(red: 0.89, green: 0.65, blue: 0.3))
        
        Path { path in
            path.move(to: CGPoint(x: middle * 1.198, y: middle * 1.046))
            path.addLine(to: CGPoint(x: middle * 1.186, y: middle * 1.069))
            path.addLine(to: CGPoint(x: middle * 1.19, y: middle * 1.086))
        }
        .fill(Color(red: 0.89, green: 0.65, blue: 0.3))
    }
}

struct FingersView_Previews: PreviewProvider {
    static var previews: some View {
        FingersView(middle: 200)
    }
}
