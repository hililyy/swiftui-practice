//
//  SecondNavigationView.swift
//  SwiftUIBasic
//
//  Created by 강조은 on 2023/09/12.
//

import SwiftUI

struct SecondNavigationView: View {
    
    @Environment(\.presentationMode) var presentationMode
    
    
    var body: some View {
        ZStack {
            Color.green.ignoresSafeArea()
                .navigationTitle("2번째 페이지")
            
            VStack(spacing: 20) {
                Button {
                    presentationMode.wrappedValue.dismiss()
                } label: {
                    Text("이전 페이지로 이동")
                        .foregroundColor(.green)
                        .font(.headline)
                        .padding()
                        .background(Color.white)
                        .cornerRadius(10)
                }
                
                NavigationLink {
                    ZStack {
                        Color.red.ignoresSafeArea()
                        Text("3번째 페이지 입니다.")
                            .font(.largeTitle)
                    }
                } label: {
                    Text("3번째 페이지로 이동")
                        .foregroundColor(.green)
                        .font(.headline)
                        .padding()
                        .background(Color.white)
                        .cornerRadius(10)
                }

            }
        }
    }
}

struct SecondNavigationView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            SecondNavigationView()
        }
    }
}
