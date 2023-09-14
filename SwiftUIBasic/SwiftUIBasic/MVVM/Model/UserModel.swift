//
//  UserModel.swift
//  SwiftUIBasic
//
//  Created by 강조은 on 2023/09/13.
//

import Foundation

struct UserModel: Identifiable {
    let id: String = UUID().uuidString
    let displayName: String
    let userName: String
    let followCount: Int
    let isChecked: Bool
}
