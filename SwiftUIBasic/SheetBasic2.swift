//
//  SheetBasic2.swift
//  SwiftUIBasic
//
//  Created by 강조은 on 2023/09/12.
//

import SwiftUI

struct SheetBasic2: View {
    
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        ZStack(alignment: .topLeading) {
            Color.red.ignoresSafeArea()
            Button {
                presentationMode.wrappedValue.dismiss()
            } label: {
                Image(systemName: "xmark")
                    .foregroundColor(.white)
                    .font(.largeTitle)
                    .padding()
            }
        }
    }
}

struct SheetBasic2_Previews: PreviewProvider {
    static var previews: some View {
        SheetBasic2()
    }
}
