//
//  HomeView.swift
//  AnimalKR
//
//  Created by 강조은 on 2023/09/14.
//

import SwiftUI

struct HomeView: View {
    
    @StateObject var viewModel: AnimalViewModel = AnimalViewModel()
    
    var body: some View {
        TabView {
            
            // 1. ContentView
            ContentView()
                .tabItem {
                    Image(systemName: "house.fill")
                    Text("홈")
                }
            
            // 2. VideoView
            VideoView()
                .tabItem {
                    Image(systemName: "play.rectangle")
                    Text("비디오")
                }
            
            GalleryView()
                .tabItem {
                    Image(systemName: "photo")
                    Text("갤러리")
                }
            
            AppInfoView()
                .tabItem {
                    Image(systemName: "gear")
                    Text("앱 정보")
                }
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
