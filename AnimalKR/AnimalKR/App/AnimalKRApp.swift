//
//  AnimalKRApp.swift
//  AnimalKR
//
//  Created by 강조은 on 2023/09/14.
//

import SwiftUI

@main
struct AnimalKRApp: App {
    
    init() {
        FontManager.registerFonts()
    }
    
    var body: some Scene {
        WindowGroup {
            SplashView()
        }
    }
}
