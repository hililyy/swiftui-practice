//
//  FruitViewModel.swift
//  SwiftUIBasic
//
//  Created by 강조은 on 2023/09/13.
//

import Foundation

class FruitViewModel: ObservableObject {
    // state와 비슷하게 상태값을 선언, 클래스 안에서는 published
    @Published var fruitArray: [FruitModel] = []
    @Published var isLoading: Bool = false
    
    init() {
        getFruit()
    }
    
    func getFruit() {
        let fruit1 = FruitModel(name: "딸기", count: 1)
        let fruit2 = FruitModel(name: "사과", count: 2)
        let fruit3 = FruitModel(name: "바나나", count: 80)
        
        isLoading = true
        DispatchQueue.main.asyncAfter(deadline: .now() + 3.0) {
            self.fruitArray.append(fruit1)
            self.fruitArray.append(fruit2)
            self.fruitArray.append(fruit3)
            self.isLoading = false
        }
    }
    
    func deleteFruit(index: IndexSet) {
        fruitArray.remove(atOffsets: index)
    }
    
}
