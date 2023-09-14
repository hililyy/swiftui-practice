//
//  BindingBasic.swift
//  SwiftUIBasic
//
//  Created by 강조은 on 2023/08/30.
//

import SwiftUI

struct BindingBasic: View {
    
    @State var backgroundColor: Color = .green
    @State var title: String = "Binding Basic View"
    
    var body: some View {
        ZStack {
            backgroundColor
                .ignoresSafeArea()
            
            VStack {
                Text(title)
                
                BindingChild(backgroundColor: $backgroundColor, title: $title)
            }
        }
    }
}

struct BindingBasic_Previews: PreviewProvider {
    static var previews: some View {
        BindingBasic()
    }
}
