//
//  BindingChild.swift
//  SwiftUIBasic
//
//  Created by 강조은 on 2023/08/30.
//

import SwiftUI

struct BindingChild: View {
    
    @State var buttonColor: Color = .blue
    @Binding var backgroundColor: Color
    @Binding var title: String
    
    var body: some View {
        Button {
            backgroundColor = .orange
            buttonColor = .pink
            title = "Binding Child View"
        } label: {
            Text("Child View 이동")
                .foregroundColor(.white)
                .padding()
                .padding(.horizontal)
                .background(buttonColor)
                .cornerRadius(10)
        }

    }
}

struct BindingChild_Previews: PreviewProvider {
    static var previews: some View {
        BindingChild(backgroundColor: .constant(.orange), title: .constant("Binding Child"))
            .previewLayout(.sizeThatFits)
    }
}
