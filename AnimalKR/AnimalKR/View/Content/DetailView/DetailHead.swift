//
//  DetailHead.swift
//  AnimalKR
//
//  Created by 강조은 on 2023/09/15.
//

import SwiftUI

struct DetailHead: View {
    
    var headingImage: String
    var headingText: String
    
    var body: some View {
        HStack {
            Image(systemName: headingImage)
                .foregroundColor(.accentColor)
                .imageScale(.large)
        Text(headingText)
                .font(.title)
                .fontWeight(.bold)
        }
    }
}

struct DetailHead_Previews: PreviewProvider {
    static var previews: some View {
        DetailHead(headingImage: "gear", headingText: "Head Title")
    }
}
