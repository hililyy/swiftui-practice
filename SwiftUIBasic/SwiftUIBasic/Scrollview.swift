//
//  Scrollview.swift
//  SwiftUIBasic
//
//  Created by 강조은 on 2023/08/29.
//

import SwiftUI

struct Scrollview: View {
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            VStack {
                ForEach(0..<50) { index in
                    Rectangle()
                        .fill(.blue)
                        .frame(height: 300)
                        .overlay(
                            Text("\(index)번")
                                .font(.title)
                        )
                }
            }
        }
        
        ScrollView(.horizontal, showsIndicators: true) {
            HStack {
                ForEach(0..<50) { index in
                    Rectangle()
                        .fill(.blue)
                        .frame(width: 200, height: 300)
                        .overlay(
                            Text("\(index)번")
                                .font(.title)
                        )
                }
            }
        }
        
        ScrollView(showsIndicators: true) { // LazyHStack, LazyVStack -> 스크롤 하게 되면 정보를 업데이트 (주로 쓰임)
            LazyVStack {
                ForEach(0..<10) { _ in
                    ScrollView(.horizontal, showsIndicators: false) {
                        LazyHStack {
                            ForEach(0..<20) { _ in
                                RoundedRectangle(cornerRadius: 25.0)
                                    .fill(.white)
                                    .frame(width: 200, height: 150)
                                    .shadow(radius: 10)
                                    .padding()
                            }
                        }
                    }
                }
            }
        }
    }
}

struct Scrollview_Previews: PreviewProvider {
    static var previews: some View {
        Scrollview()
    }
}
