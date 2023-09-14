//
//  ExtractView.swift
//  SwiftUIBasic
//
//  Created by 강조은 on 2023/08/30.
//

import SwiftUI

struct ExtractView: View {
    @State var backgroundColor: Color = Color.pink
    
    var body: some View {
        ZStack {
            backgroundColor
                .ignoresSafeArea()
            
            contentLayer
        }
    }
    
    var contentLayer: some View {
        VStack {
            Text("Extract")
                .font(.largeTitle)
            
            Button {
                buttonPressed()
            } label: {
                Text("바탕색 변경")
                    .font(.headline)
                    .foregroundColor(.white)
                    .padding()
                    .background(.black)
                    .cornerRadius(10)
            }
        }
    }
    
    func buttonPressed() {
        backgroundColor = .yellow
    }
}

struct ExtractView_Previews: PreviewProvider {
    static var previews: some View {
        ExtractView()
    }
}
