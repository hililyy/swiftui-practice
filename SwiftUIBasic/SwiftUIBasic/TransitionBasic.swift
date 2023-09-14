//
//  TransitionBasic.swift
//  SwiftUIBasic
//
//  Created by 강조은 on 2023/08/30.
//

import SwiftUI

struct TransitionBasic: View {
    
    @State var showTransition: Bool = false
    
    var body: some View {
        ZStack(alignment: .bottom) {
            VStack {
                Button {
                    withAnimation(.easeInOut) {
                        showTransition.toggle()
                    }
                } label: {
                    Text("Button")
                }
                
                Spacer()
            }
            
            if showTransition {
                RoundedRectangle(cornerRadius: 30)
                    .frame(height: UIScreen.main.bounds.height * 0.5)
                    .opacity(showTransition ? 1.0 : 0.0)
                
                // 1. move transition
//                    .transition(.move(edge: .bottom))
                
                // 2. opacity transition
//                    .transition(.opacity) // (= .opacity())
                
                // 3. scale transtition
//                    .transition(.scale)
                
                // 4. asymmetric transition - 시작점, 끝나는점 커스텀으로 정해줄 수 있음 (비대칭)
                    .transition(.asymmetric(
                        insertion: .move(edge: .leading), // 시작점
                        removal: .move(edge: .trailing))) // 끝나는점
            }
        }
        .ignoresSafeArea(edges: .bottom)
    }
}

struct TransitionBasic_Previews: PreviewProvider {
    static var previews: some View {
        TransitionBasic()
    }
}
