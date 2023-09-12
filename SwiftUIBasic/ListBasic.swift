//
//  ListBasic.swift
//  SwiftUIBasic
//
//  Created by 강조은 on 2023/09/12.
//

import SwiftUI

struct ListBasic: View {
    
    @State var byulee: [String] = ["별이", "아기고양이", "똥콩이", "별군이", "일꼬마" ,"아기별이"]
    @State var meats: [String] = ["소고기", "닭고기", "돼지고기", "오리고기"]
    
    var body: some View {
        NavigationView {
            List {
                Section {
                    ForEach(byulee, id: \.self) { byulee in
                        Text(byulee)
                            .font(.body)
                            .foregroundColor(.white)
                            .padding(.vertical)
                    }
                    .onDelete(perform: delete)
                    .onMove(perform: move)
                    .listRowBackground(Color.blue)
                } header: {
                    Text("별이의 별명")
                        .font(.headline)
                        .foregroundColor(.brown)
                } // : Section
                
                Section {
                    ForEach(meats, id: \.self) { meats in
                        Text(meats)
                            .padding(.vertical)
                    }
                } header: {
                    Text("별이의 간식")
                        .font(.headline)
                        .foregroundColor(.red)
                }

            } // : List
            .navigationTitle("별이")
            .navigationBarTitleDisplayMode(.inline)
            .navigationBarItems(leading: EditButton(), trailing: addButton)
        } // : Navigation
    } // : Body
    
    // Function
    func delete(indexSet: IndexSet) {
        byulee.remove(atOffsets: indexSet)
    }
    
    func move(indices: IndexSet, newOffSet: Int) {
        byulee.move(fromOffsets: indices, toOffset: newOffSet)
    }
    
    var addButton: some View {
        Button {
            byulee.append("똥깡아지")
        } label: {
            Text("똥깡아지 추가")
        }
    }
}

struct ListBasic_Previews: PreviewProvider {
    static var previews: some View {
        ListBasic()
    }
}
