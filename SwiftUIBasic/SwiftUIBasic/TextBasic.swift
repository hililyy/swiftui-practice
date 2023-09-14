//
//  TextBasic.swift
//  SwiftUIBasic
//
//  Created by 강조은 on 2023/03/29.
//

import SwiftUI

struct TextBasic: View {
    var body: some View {
        VStack(spacing: 20) {
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                .font(.title)
                .fontWeight(.semibold)
                .bold()
                .underline(true, color: Color.red)
                .italic()
                .strikethrough(true, color: Color.green)
            
            Text("Text 크기 지정".uppercased())
                .font(.system(size: 25, weight: .semibold, design: .serif))
            
            
            Text("MultiLine Text 정렬 MultiLine Text 정렬 MultiLine Text 정렬 MultiLine Text 정렬 MultiLine Text 정렬 MultiLine Text 정렬 MultiLine Text 정렬 MultiLine Text 정렬 MultiLine Text 정렬 ")
                .multilineTextAlignment(.leading)
                .foregroundColor(.purple)
        }
    }
}

struct TextBasic_Previews: PreviewProvider {
    static var previews: some View {
        TextBasic()
    }
}
