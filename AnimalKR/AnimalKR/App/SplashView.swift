//
//  SplashView.swift
//  AnimalKR
//
//  Created by 강조은 on 2023/09/14.
//

import SwiftUI

struct SplashView: View {
    
    @State private var isAvtive: Bool = false
    @State private var size: Double = 0.5
    @State private var opacity: Double = 0.5
    
    var body: some View {
        if isAvtive {
            HomeView()
        } else {
            VStack(spacing: 20) {
                Image("splash")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 150, height: 150)
                
                Text("한국의 멸종위기 동물들")
                    .font(.custom("KOTRA_GOTHIC", size: 30))
                    .foregroundColor(.accentColor.opacity(0.8))
                    .fontWeight(.heavy)
            } //: VSTACK
            .scaleEffect(size)
            .opacity(opacity)
            .onAppear {
                withAnimation(.easeInOut(duration: 1.5)) {
                    size = 1.0
                    opacity = 1.0
                    
                    // 3초후에 HomeView로 이동
                    DispatchQueue.main.asyncAfter(deadline: .now() + 3.0) {
                        isAvtive = true
                    }
                }
            }
        }
    }
}

struct SplashView_Previews: PreviewProvider {
    static var previews: some View {
        SplashView()
    }
}
