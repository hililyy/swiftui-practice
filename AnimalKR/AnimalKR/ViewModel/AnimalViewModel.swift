//
//  AnimalViewModel.swift
//  AnimalKR
//
//  Created by 강조은 on 2023/09/14.
//

import Foundation

class AnimalViewModel: ObservableObject {
    @Published var animals: [Animal] = Bundle.main.decode("animals.json")
    @Published var coverImages: [CoverImage] = Bundle.main.decode("covers.json")
}
