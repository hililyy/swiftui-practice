//
//  ShapeBasic.swift
//  SwiftUIBasic
//
//  Created by 강조은 on 2023/03/30.
//

import SwiftUI

struct ShapeBasic: View {
    var body: some View {
        VStack (spacing: 20) {
            Text("원형")
                .font(.title)
            Circle()
//                .fill(Color.blue)
//                .foregroundColor(.pink)
//                .stroke(Color.red, lineWidth: 20)
//                .stroke(Color.purple, style: StrokeStyle(lineWidth: 30, lineCap: .round, dash: [30]))
                .trim(from: 0.2, to: 1.0)
                .stroke(Color.purple, lineWidth: 50)
                .frame(width: 200, height: 100)
                .padding(20)
            
            Text("타원형")
                .font(.title)
            Ellipse()
                .fill(Color.green)
                .frame(width: 200, height: 100, alignment: .center)
            
            Text("캡슐형")
                .font(.title)
            Capsule(style: .circular)
                .stroke(Color.blue, lineWidth: 30)
                .frame(width: 200, height: 100, alignment: .center)
        }
        
        VStack(spacing: 20) {
            Text("직사각형")
                .font(.title)
            Rectangle()
                .fill(Color.red)
                .frame(width: 200, height: 100, alignment: .center)
            
            Text("둥근직사각형")
                .font(.title)
            RoundedRectangle(cornerRadius: 20)
                .trim(from: 0.4, to: 1.0)
                .frame(width: 300, height: 200, alignment: .center)
        }
    }
}

struct ShapeBasic_Previews: PreviewProvider {
    static var previews: some View {
        ShapeBasic()
    }
}
