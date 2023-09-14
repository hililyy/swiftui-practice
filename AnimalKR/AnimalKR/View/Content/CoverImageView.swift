//
//  CoverImageView.swift
//  AnimalKR
//
//  Created by 강조은 on 2023/09/14.
//

import SwiftUI

struct CoverImageView: View {
    
    @ObservedObject var viewModel: AnimalViewModel
    
    var body: some View {
        TabView {
            ForEach(viewModel.coverImages) { cover in
                Image(cover.name)
                    .resizable()
                    .scaledToFill()
            }
        }
        .tabViewStyle(.page)
    }
}

struct CoverImageView_Previews: PreviewProvider {
    static var previews: some View {
        CoverImageView(viewModel: AnimalViewModel())
            .previewLayout(.fixed(width: 400, height: 300))
    }
}
