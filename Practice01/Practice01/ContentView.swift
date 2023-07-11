//
//  ContentView.swift
//  Practice01
//
//  Created by 강조은 on 2023/07/11.
//

import SwiftUI

struct ContentView: View {
    
    @State var isLightening: Bool = false
    
    var body: some View {
        ZStack {
            Color(uiColor: .yellow).edgesIgnoringSafeArea(.all)
            
            VStack {
                Spacer()
                
                Image(systemName: isLightening ? "bolt.fill" : "bolt")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 200)
                
                Spacer()
                
                HStack{
                    Text(isLightening ? "번개 꺼져라!" : "번개 켜져라!")
                    
                    Button {
                        isLightening.toggle()
                    } label: {
                        Text(isLightening ? "피융~" : "번쩍!")
                            .padding()
                            .background(.orange)
                            .cornerRadius(10)
                    }
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
