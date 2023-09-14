//
//  ButtonBasic.swift
//  SwiftUIBasic
//
//  Created by 강조은 on 2023/08/29.
//

import SwiftUI

struct ButtonBasic: View {
    @State var mainTitle: String = "아직 버튼 안눌림"
    
    var body: some View {
        VStack(spacing: 20) {
            // 리셋 버튼
            Button {
                self.mainTitle = "리셋"
            } label: {
                Text("리셋 버튼")
            }
            
            
            // 라벨
            Text(mainTitle)
                .font(.title)
            
            Divider()
            
            Button {
                //action
                self.mainTitle = "기본 버튼 눌림"
            } label: {
                Text("기본 버튼")
            }
            .accentColor(.red)
            
            Divider()
            
            Button {
                self.mainTitle = "저장 버튼 눌림"
            } label: {
                Text("저장 버튼")
                    .font(.headline)
                    .fontWeight(.semibold)
                    .foregroundColor(.white)
                    .padding()
                    .padding(.horizontal, 20)
                    .background(
                        Color.blue
                            .cornerRadius(10)
                            .shadow(radius: 10)
                    )
            }
            
            Divider()
            
            Button {
                self.mainTitle = "하트 버튼 눌림"
            } label: {
                Circle()
                    .fill(.white)
                    .frame(width: 75, height: 75)
                    .shadow(radius: 10)
                    .overlay(
                        Image(systemName: "heart.fill")
                            .font(.largeTitle)
                            .foregroundColor(Color.red)
                    )
            }
            
            Button {
                self.mainTitle = "완료 버튼 눌림"
            } label: {
                Text("완료")
                    .font(.caption)
                    .bold()
                    .foregroundColor(.gray)
                    .padding()
                    .padding(.horizontal, 10)
                    .background(
                        Capsule()
                            .stroke(Color.gray, lineWidth: 2.5)
                    )
            }
        }
    }
}

struct ButtonBasic_Previews: PreviewProvider {
    static var previews: some View {
        ButtonBasic()
    }
}
