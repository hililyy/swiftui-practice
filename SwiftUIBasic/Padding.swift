//
//  Padding.swift
//  SwiftUIBasic
//
//  Created by 강조은 on 2023/04/30.
//

import SwiftUI

struct Padding: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 20) {
            Text("Hello World!")
                .background(.yellow)
                .padding() // .padding(.all, 15)
                .padding(.leading, 20) // background 안에 padding 처리 됨 (CSS 기준 padding)
                .background(.blue)
                .padding(.bottom, 20) // background 밖에 padding 처리 됨 (CSS 기준 margin)
            
            Divider()
            
            Text("Hello World!")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.bottom, 20)
            
            Text("안녕하삼 하이하이 헬로헬로 안녕하삼 하이하이 헬로헬로 안녕하삼 하이하이 헬로헬로 안녕하삼 하이하이 헬로헬로 안녕하삼 하이하이 헬로헬로 안녕하삼 하이하이 헬로헬로 안녕하삼 하이하이 헬로헬로 안녕하삼 하이하이 헬로헬로 ")
        }
        
        .padding()
        .padding(.vertical, 30)
        .background(
                Color.white // 여기서는 열거형 전체 적어주어야함
                .cornerRadius(10)
                .shadow(
                    color: .black.opacity(0.3),
                    radius: 10,
                    x: 10, y: 10)
        )
        .padding()
    }
}

struct Padding_Previews: PreviewProvider {
    static var previews: some View {
        Padding()
    }
}
