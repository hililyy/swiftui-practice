//
//  GradientBasic.swift
//  SwiftUIBasic
//
//  Created by 강조은 on 2023/04/02.
//

import SwiftUI

struct GradientBasic: View {
    var body: some View {
        VStack(spacing: 20) {
            Text("Linear Gradient")
                .font(.title2)
            RoundedRectangle(cornerRadius: 25)
                .fill(
                    LinearGradient(
                        gradient: Gradient(colors: [.purple, .yellow, .gray]),
                        startPoint: .topLeading,
                        endPoint: .bottom)
                )
                .frame(width: 300, height: 200)
            
            Text("Radial Gradient")
                .font(.title2)
            RoundedRectangle(cornerRadius: 25)
                .fill(
                    RadialGradient(gradient: Gradient(colors: [.yellow, .purple]),
                                   center: .leading,
                                   startRadius: 5,
                                   endRadius: 300
                                  )
                )
                .frame(width: 300, height: 200)
            
            Text("Angular Gradient")
                .font(.title2)
            RoundedRectangle(cornerRadius: 25)
                .fill(
                    AngularGradient(gradient: Gradient(colors: [.blue, .green]),
                                    center: .topLeading,
                                    angle: .degrees(30))
                )
                .frame(width: 300, height: 200)
        }
    }
}

struct GradientBasic_Previews: PreviewProvider {
    static var previews: some View {
        GradientBasic()
    }
}
