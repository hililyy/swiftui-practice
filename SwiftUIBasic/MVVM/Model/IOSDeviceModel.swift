//
//  IOSDeviceModel.swift
//  SwiftUIBasic
//
//  Created by 강조은 on 2023/09/14.
//

import Foundation

struct IOSDeviceModel: Identifiable {
    let id: String = UUID().uuidString
    let name: String
}
