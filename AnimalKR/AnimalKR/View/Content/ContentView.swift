//
//  ContentView.swift
//  AnimalKR
//
//  Created by 강조은 on 2023/09/14.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var viewModel: AnimalViewModel = AnimalViewModel()
    
    var body: some View {
        NavigationView {
            List {
                CoverImageView(viewModel: viewModel)
                    .frame(height: CGFloat.screenHeight * 0.4)
                    .listRowInsets(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0))
                
                ForEach(viewModel.animals) { animal in
                    NavigationLink {
                        // destiona
                    } label: {
                        AnimalListView(animal: animal)
                            .listRowInsets(EdgeInsets(top: 10, leading: 10, bottom: 10, trailing: 0))
                    }
                }
                CreditView()
                    .hCenter()
            }
            .listStyle(.plain)
            .navigationTitle("멸종위기 동물들")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(viewModel: AnimalViewModel())
    }
}
