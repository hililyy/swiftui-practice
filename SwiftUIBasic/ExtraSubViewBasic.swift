//
//  ExtraSubViewBasic.swift
//  SwiftUIBasic
//
//  Created by 강조은 on 2023/08/30.
//

import SwiftUI

struct ExtraSubViewBasic: View {
    var body: some View {
        ZStack {
            Color.cyan
                .ignoresSafeArea()
            
            contentLayer
        }
    }
    
    var contentLayer: some View {
        HStack {
            ItemBasic(title: "사과", count: 1, color: .red)
            ItemBasic(title: "오렌지", count: 10, color: .orange)
            ItemBasic(title: "바나나", count: 34, color: .yellow)
        }
    }
}

struct ExtraSubViewBasic_Previews: PreviewProvider {
    static var previews: some View {
        ExtraSubViewBasic()
    }
}
