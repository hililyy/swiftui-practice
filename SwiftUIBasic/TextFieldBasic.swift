//
//  TextFieldBasic.swift
//  SwiftUIBasic
//
//  Created by 강조은 on 2023/09/13.
//

import SwiftUI

struct TextFieldBasic: View {
    
    @State var inputText: String = ""
    @State var userNameData: [String] = []
    
    var body: some View {
        NavigationView {
            VStack(spacing: 20) {
//                TextField("최소 2글자 이상 입력", text: $inputText)
////                    .textFieldStyle(.roundedBorder)
//                    .padding()
//                    .background(Color.gray.opacity(0.3))
//                    .cornerRadius(10)
//                    .font(.headline)
                
                TextEditor(text: $inputText)
                    .frame(height: 250)
                    .colorMultiply(Color.gray.opacity(0.5))
                    .cornerRadius(10)
                
                Button {
                    if isTextEnough() {
                        saveText()
                    }
                } label: {
                    Text("save".uppercased())
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(isTextEnough() ? Color.blue : Color.gray)
                        .cornerRadius(10)
                        .foregroundColor(.white)
                        .font(.headline)
                }
                .disabled(!isTextEnough())
                
                ForEach(userNameData, id: \.self) { item in
                    Text(item)
                }

                Spacer()
            }
            .padding()
            .navigationTitle("당신의 이름은?")
        }
    }
    
    func isTextEnough() -> Bool {
        // 2개 이상의 텍스트가 되면 true, 아니면 false
        if inputText.count >= 2 {
            return true
        } else {
            return false
        }
    }
    
    func saveText() {
        userNameData.append(inputText)
        inputText = ""
    }
}

struct TextFieldBasic_Previews: PreviewProvider {
    static var previews: some View {
        TextFieldBasic()
    }
}
