//
//  SwiftUIBasicApp.swift
//  SwiftUIBasic
//
//  Created by 강조은 on 2023/03/29.
//

import SwiftUI

@main
struct SwiftUIBasicApp: App {
    init() {
        FontManager.registerFonts()
    }
    
    var body: some Scene {
        WindowGroup {
            TextFieldBasic()
        }
    }
}
