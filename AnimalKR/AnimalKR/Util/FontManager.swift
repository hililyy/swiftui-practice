//
//  FontManager.swift
//  AnimalKR
//
//  Created by 강조은 on 2023/09/14.
//

import SwiftUI

public struct FontManager {
    public static func registerFonts() {
        registerFont(bundle: Bundle.main, fontName: "KOTRA_GOTHIC", fontExtension: ".ttf") //change according to your ext.
    }
    
    fileprivate static func registerFont(bundle: Bundle, fontName: String, fontExtension: String) {
        print(Bundle.main)
        guard let fontURL = bundle.url(forResource: fontName, withExtension: fontExtension),
              let fontDataProvider = CGDataProvider(url: fontURL as CFURL),
              let font = CGFont(fontDataProvider) else {
            fatalError("Couldn't create font from data")
        }
        
        var error: Unmanaged<CFError>?
        
        CTFontManagerRegisterGraphicsFont(font, &error)
    }
}
