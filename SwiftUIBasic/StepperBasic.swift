//
//  StepperBasic.swift
//  SwiftUIBasic
//
//  Created by 강조은 on 2023/09/13.
//

import SwiftUI

struct StepperBasic: View {
    
    @State var stepperValue: Int = 0
    @State var widthChange: CGFloat = 0
    
    var body: some View {
        VStack {
            Stepper("기본 Stepper: \(stepperValue)", value: $stepperValue)
                .padding()
            
            Divider()
            
            RoundedRectangle(cornerRadius: 25.0)
                .frame(width: 100 + widthChange, height: 100)
            
            Stepper("직사각형 너비 변화") {
                // + 누를 때 변화되는것
                differentWidth(amount: 20)
            } onDecrement: {
                differentWidth(amount: -20)
            }
        }
    }
    
    func differentWidth(amount: CGFloat) {
        withAnimation(.easeOut) {
            widthChange += amount
            
            widthChange = min(max(widthChange, 0), 260)
            print(widthChange)
        }
    }
}

struct StepperBasic_Previews: PreviewProvider {
    static var previews: some View {
        StepperBasic()
    }
}
