//
//  SheetBasic.swift
//  SwiftUIBasic
//
//  Created by 강조은 on 2023/09/12.
//

import SwiftUI

struct SheetBasic: View {
    @State var showSheet: Bool = false
    
    var body: some View {
        ZStack{
            Color.green.ignoresSafeArea()
            
            Button {
                showSheet.toggle()
            } label: {
                Text("Button")
                    .foregroundColor(.green)
                    .font(.headline)
                    .padding()
                    .background(Color.white)
            }
            .sheet(isPresented: $showSheet) {
                SheetBasic2()
            }
//            .fullScreenCover(isPresented: $showSheet) {
//                SheetBasic2()
//            }
        }
    }
}

struct SheetBasic_Previews: PreviewProvider {
    static var previews: some View {
        SheetBasic()
    }
}
