//
//  Spacer.swift
//  SwiftUIBasic
//
//  Created by 강조은 on 2023/04/30.
//

import SwiftUI

struct Spacer: View {
    var body: some View {
        HStack(spacing: 0) {
            Spacer()
                .frame(height: 10)
                .background(.orange)
            
            Rectangle()
                .frame(width: 50, height: 50)
            
            Spacer()
                .frame(height: 10)
                .background(.orange)
            
            Rectangle()
                .fill(.red)
                .frame(width: 50, height: 50)
            
            Spacer()
                .frame(height: 10)
                .background(.orange)
            
            Rectangle()
                .fill(.green)
                .frame(width: 50, height: 50)
            
            Spacer()
                .frame(height: 10)
                .background(.orange)
        }
        .background(.yellow)
        
        VStack {
            HStack(spacing: 0) {
                Image(systemName: "xmark")
                
                Spacer()
                
                Image(systemName: "gear")
            }
            .font(.title)
            .padding(.horizontal)
            
            Spacer()
        }
    }
}

struct Spacer_Previews: PreviewProvider {
    static var previews: some View {
        Spacer()
    }
}
