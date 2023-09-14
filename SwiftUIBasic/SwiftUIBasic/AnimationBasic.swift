//
//  AnimationBasic.swift
//  SwiftUIBasic
//
//  Created by 강조은 on 2023/08/30.
//

import SwiftUI

struct AnimationBasic: View {
    @State var isAnimated: Bool = false
    
    let timing: Double = 3
    
    var body: some View {
        VStack {
            Button {
                withAnimation(
                    .default
//                    .repeatCount(5) // 횟수 설정
//                    .repeatForever() // 무한 반복
//                        .delay(1.0) // 시작 시 딜레이
                    
                ) {
                    isAnimated.toggle()
                }
            } label: {
                Text("Button")
            }
            
            Spacer()
            
            RoundedRectangle(cornerRadius: isAnimated ? 50 : 0)
                .fill(isAnimated ? Color.red : Color.green)
                .frame(width: isAnimated ? 100 : 300, height: isAnimated ? 100 : 300)
                .rotationEffect(Angle(degrees: isAnimated ? 360 : 0))
                .offset(y: isAnimated ? 300 : 0)
            Spacer()
        }
        
        // 2번 View - Speed에 따른 animation
        VStack {
            Button {
                isAnimated.toggle()
            } label: {
                Text("Button")
            }
            
            // liner animation: 처음부터 끝까지 속도가 일정함
            RoundedRectangle(cornerRadius: 20)
                .frame(width: isAnimated ? 350 : 50, height: 100)
                .animation(.linear(duration: timing), value: isAnimated)
            
            // easeIn animation: 처음에 느렸다가 끝에 빨라짐
            RoundedRectangle(cornerRadius: 20)
                .frame(width: isAnimated ? 350 : 50, height: 100)
                .animation(.easeIn(duration: timing), value: isAnimated)
            
            // easeOut animation: 처음에 빨랐다가 끝에 느려짐
            RoundedRectangle(cornerRadius: 20)
                .frame(width: isAnimated ? 350 : 50, height: 100)
                .animation(.easeOut(duration: timing), value: isAnimated)
            
            // easeInOut animation: 처음과 끝에 느려지고, 중간부분이 빨라짐
            RoundedRectangle(cornerRadius: 20)
                .frame(width: isAnimated ? 350 : 50, height: 100)
                .animation(.easeInOut(duration: timing), value: isAnimated)
        }
        
        // 3번 View - Spring animation
        VStack {
            Button {
                // response: 단일 진동을 완료하는데 걸리는 시간
                // damping: 얼마나 빠르게 스프링이 정지하는 속도제어 -> 만약 0일때 영원히 멈추지 않음
                // blendDuration: 다른 에니메이션 간의 전환 길이제어
                withAnimation(.spring(
                    response: 0.5,
                    dampingFraction: 0.5, // 0 ~ 1.0
                    blendDuration: 0)) {
                        isAnimated.toggle()
                    }
            } label: {
                Text("Button")
            }
            RoundedRectangle(cornerRadius: 20)
                .frame(width: isAnimated ? 350 : 50, height: 100)
        }
    }
}

struct AnimationBasic_Previews: PreviewProvider {
    static var previews: some View {
        AnimationBasic()
    }
}
