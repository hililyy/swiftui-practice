//
//  IOSDeviceView1.swift
//  SwiftUIBasic
//
//  Created by 강조은 on 2023/09/14.
//

import SwiftUI

struct IOSDeviceView1: View {
    
    @StateObject var viewModel: IOSDeviceViewModel = IOSDeviceViewModel()
    
    var body: some View {
        NavigationView {
            List {
                ForEach(viewModel.iOSDeviceArray) { item in
                    NavigationLink {
                        IOSDeviceView2(selectedItem: item.name)
                    } label: {
                        Text(item.name)
                    }
                }
            }
        }
        .environmentObject(viewModel)
    }
}

struct IOSDeviceView1_Previews: PreviewProvider {
    static var previews: some View {
        IOSDeviceView1()
    }
}
