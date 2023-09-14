//
//  LazyGrid.swift
//  SwiftUIBasic
//
//  Created by 강조은 on 2023/08/29.
//

import SwiftUI

struct LazyGrid: View {
    
    let columns: [GridItem] = [
        GridItem(.flexible(), spacing: 6, alignment: nil),
        GridItem(.flexible(), spacing: 6, alignment: nil),
        GridItem(.flexible(), spacing: 6, alignment: nil)
    ]
    
    let title: [String] = Array(1...1000).map { "목록 \($0)"}
    
    let layout: [GridItem] = [
        GridItem(.flexible(maximum: 80)),
        GridItem(.flexible(maximum: 80)),
        GridItem(.flexible(maximum: 80))
    ]
    
    var body: some View {
        
        ScrollView {
            
            Rectangle()
                .fill(.pink)
                .frame(height: 400)
            
            LazyVGrid(
                columns: columns,
                alignment: .center,
                spacing: 6,
                pinnedViews: [.sectionHeaders]) {
                    // Section 1
                    Section(header: Text("Section1")
                        .foregroundColor(.white)
                        .font(.title)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .background(.blue)
                        .padding()
                    ) {
                        ForEach(0..<20) { index in
                            Rectangle()
                                .fill(.yellow)
                                .frame(height: 150)
                                .overlay(Text("\(index)"))
                            
                        }
                    } //: Section 1
                    
                    // Section 2
                    Section(header: Text("Section2")
                        .foregroundColor(.white)
                        .font(.title)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .background(.red)
                        .padding()
                    ) {
                        ForEach(0..<20) { index in
                            Rectangle()
                                .fill(.purple)
                                .frame(height: 150)
                                .overlay(Text("\(index)"))
                            
                        }
                    } //: Section 1
                }
        } //: 1번
        
        // LazyHGrid
        // ScrollView horizontal
        ScrollView(.horizontal) {
            LazyHGrid(rows: layout, spacing: 20) {
                ForEach(title, id: \.self) { item in
                    VStack {
                        Capsule()
                            .fill(.yellow)
                            .frame(height: 30)
                        
                        Text(item)
                            .foregroundColor(.blue)
                    }
                }
            }
        }
    }
}

struct LazyGrid_Previews: PreviewProvider {
    static var previews: some View {
        LazyGrid()
    }
}
