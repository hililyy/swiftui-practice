//
//  FruitModel.swift
//  SwiftUIBasic
//
//  Created by 강조은 on 2023/09/13.
//

import Foundation

struct FruitModel: Identifiable {
    let id: String = UUID().uuidString
    let name: String
    let count: Int
}
