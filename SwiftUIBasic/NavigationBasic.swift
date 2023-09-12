//
//  NavigationBasic.swift
//  SwiftUIBasic
//
//  Created by 강조은 on 2023/09/12.
//

import SwiftUI

struct NavigationBasic: View {
    
    @State var showSheet: Bool = false
    
    var body: some View {
        NavigationView {
            ZStack {
                
                NavigationLink {
                    // destination: 목적지 -> 어디 페이지로 이동할건가
                    SecondNavigationView()
                } label: {
                    Text("Second Navigation 이동")
                        .foregroundColor(.white)
                        .font(.headline)
                        .padding()
                        .background(Color.blue)
                        .cornerRadius(10)
                }
            } // : VStack
            .navigationTitle("페이지 제목")
            // navigationBarTitleDisplayMode - 상단 페이지 제목 스타일
            // .automatic: 자동, inline: 상단에 작게, large: leading 쪽으로 크게
            .navigationBarTitleDisplayMode(.large)
            .navigationBarHidden(true)
            .navigationBarItems(
                leading: Image(systemName: "line.3.horicontal"),
                trailing: Button(action: {
                    showSheet.toggle()
                }, label: {
                    Image(systemName: "gear")
                }))
        } // : NavigationView
        .sheet(isPresented: $showSheet) {
            ZStack {
                // background
                Color.green.ignoresSafeArea()
                
                Text("설정 페이지 입니다.")
                    .font(.largeTitle)
            }
        }
    }
}

struct NavigationBasic_Previews: PreviewProvider {
    static var previews: some View {
        NavigationBasic()
    }
}
