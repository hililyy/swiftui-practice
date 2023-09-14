//
//  ColorBasic.swift
//  SwiftUIBasic
//
//  Created by 강조은 on 2023/04/01.
//

import SwiftUI

struct ColorBasic: View {
    var body: some View {
        VStack(spacing: 20) {
            Text("Basic Color")
                .font(.title)
            RoundedRectangle(cornerRadius: 25)
                .fill(.purple)
                .frame(width: 300, height: 100)
            
            Text("Primary Color")
                .font(.title)
            RoundedRectangle(cornerRadius: 25)
                .fill(.primary)
                .frame(width: 300, height: 100)
            
            
            Text("UIColor")
                .font(.title)
            RoundedRectangle(cornerRadius: 25)
                .fill(Color(.secondarySystemBackground))
                .frame(width: 300, height: 100)
            
            
            Text("CustomColor")
                .font(.title)
            RoundedRectangle(cornerRadius: 25)
                .fill(Color("CustomColor"))
                .frame(width: 300, height: 100)
        }
    }
}

struct ColorBasic_Previews: PreviewProvider {
    static var previews: some View {
        ColorBasic()
//            .preferredColorScheme(.dark) // 다크모드로 변경!
    }
}
