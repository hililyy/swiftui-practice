//
//  IconBasic.swift
//  SwiftUIBasic
//
//  Created by 강조은 on 2023/04/02.
//

import SwiftUI

struct IconBasic: View {
    var body: some View {
        VStack(spacing: 20) {
            Image(systemName: "pencil")
                .resizable()
                .renderingMode(.original)
                .scaledToFill()
                .foregroundColor(.purple)
                .frame(width: 300, height: 300)
        }
    }
}

struct IconBasic_Previews: PreviewProvider {
    static var previews: some View {
        IconBasic()
    }
}
