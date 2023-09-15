//
//  ExternalWebLink.swift
//  AnimalKR
//
//  Created by 강조은 on 2023/09/15.
//

import SwiftUI

struct ExternalWebLink: View {
    
    let animal: Animal
    
    var body: some View {
        GroupBox {
            HStack {
                Image(systemName: "globe")
                Text("멸종 위기 야생생물 포털")
                
                Spacer()
                
                Group {
                    Image(systemName: "arrow.up.right.square")
                    Link(destination: (URL(string: animal.link)!)) {
                        Text(animal.name)
                    }
                    .foregroundColor(.accentColor)
                }
            }
            .padding()
        }
    }
}

struct ExternalWebLink_Previews: PreviewProvider {
    static var previews: some View {
        ExternalWebLink(animal: Animal.sampleAnimal)
    }
}
