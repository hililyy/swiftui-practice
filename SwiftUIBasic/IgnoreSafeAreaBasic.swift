//
//  IgnoreSafeAreaBasic.swift
//  SwiftUIBasic
//
//  Created by 강조은 on 2023/08/29.
//

import SwiftUI

struct IgnoreSafeAreaBasic: View {
    var body: some View {
        ZStack {
            Color.blue
                .ignoresSafeArea(edges: .bottom)
//                .ignoresSafeArea(edges: .top) // 위만 설정
            
            
            VStack {
                Text("Hello World!")
                    .font(.largeTitle)
            }
        }
        
        ScrollView {
            VStack {
                Text("박스형 리스트")
                    .font(.largeTitle)
                    .frame(maxWidth: .infinity)
                
                ForEach(1..<11) { index in
                    RoundedRectangle(cornerRadius: 25.0)
                        .fill(.white)
                        .frame(height: 150)
                        .shadow(radius: 10)
                        .padding()
                        .overlay(
                            Text("\(index)번 리스트")
                                .font(.title2)
                        )
                }
            }
        }
        .background(
            Color.blue
                .ignoresSafeArea()
        )
    }
}

struct IgnoreSafeAreaBasic_Previews: PreviewProvider {
    static var previews: some View {
        IgnoreSafeAreaBasic()
    }
}
