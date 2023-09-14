//
//  IOSDeviceView3.swift
//  SwiftUIBasic
//
//  Created by 강조은 on 2023/09/14.
//

import SwiftUI

struct IOSDeviceView3: View {
    
    @EnvironmentObject var viewModel: IOSDeviceViewModel
    
    var body: some View {
        ZStack {
            Color.cyan.ignoresSafeArea()
            
            ScrollView {
                VStack(spacing: 20) {
                    ForEach(viewModel.iOSDeviceArray) { item in
                        Text(item.name)
                    }
                }
                .foregroundColor(.white)
                .font(.largeTitle)
            }
        }
    }
}

struct IOSDeviceView3_Previews: PreviewProvider {
    static var previews: some View {
        
        IOSDeviceView3()
            .environmentObject(IOSDeviceViewModel())
    }
}
