//
//  ConditionalBasic.swift
//  SwiftUIBasic
//
//  Created by 강조은 on 2023/08/30.
//

import SwiftUI

struct ConditionalBasic: View {
    
    @State var showCircle: Bool = false
    @State var showRectangle: Bool = false
    @State var isLoading: Bool = false
    
    var body: some View {
        VStack(spacing: 20) {
            Button {
                isLoading.toggle()
            } label: {
                Text("로드중...: \(isLoading.description)") // boolean 타입을 true / false로 나타냄
            }
            
            if isLoading {
                ProgressView()
            }
            
            Button {
                showCircle.toggle()
            } label: {
                Text("원형 버튼: \(showCircle.description)")
            }
            
            Button {
                showRectangle.toggle()
            } label: {
                Text("사각형 버튼: \(showRectangle.description)")
            }
            
            if showCircle {
                Circle()
                    .frame(width: 100, height: 100)
            }
            
            if showRectangle {
                Rectangle()
                    .frame(width: 100, height: 100)
            }
            
            if !showCircle && !showRectangle {
                RoundedRectangle(cornerRadius: 25.0)
                    .frame(width: 200, height: 100)
            }
            
            if showCircle || showRectangle {
                RoundedRectangle(cornerRadius: 25.0)
                    .fill(.red)
                    .frame(width: 200, height: 100)
            }
        }
    }
}

struct ConditionalBasic_Previews: PreviewProvider {
    static var previews: some View {
        ConditionalBasic()
    }
}
