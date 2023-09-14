//
//  IOSDeviceViewModel.swift
//  SwiftUIBasic
//
//  Created by 강조은 on 2023/09/14.
//

import Foundation
import SwiftUI

class IOSDeviceViewModel: ObservableObject {
    
    @Published var iOSDeviceArray: [IOSDeviceModel] = []
    
    init() {
        getData()
    }
    
    func getData() {
        let iphone = IOSDeviceModel(name: "아이폰")
        let iPad = IOSDeviceModel(name: "아이패드")
        let iMac = IOSDeviceModel(name: "아이맥")
        let appleWatch = IOSDeviceModel(name: "애플워치")
        
        self.iOSDeviceArray.append(iphone)
        self.iOSDeviceArray.append(iPad)
        self.iOSDeviceArray.append(iMac)
        self.iOSDeviceArray.append(appleWatch)
    }
}


public struct FontManager {
    public static func registerFonts() {
        registerFont(bundle: Bundle.main, fontName: "NeoDunggeunmoPro-Regular", fontExtension: ".ttf") //change according to your ext.
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
