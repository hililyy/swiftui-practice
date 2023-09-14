//
//  IOSDeviceViewModel.swift
//  SwiftUIBasic
//
//  Created by 강조은 on 2023/09/14.
//

import Foundation

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
