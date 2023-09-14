//
//  CreditView.swift
//  AnimalKR
//
//  Created by 강조은 on 2023/09/14.
//

import SwiftUI

struct CreditView: View {
    var body: some View {
        VStack {
            Text("""
              Copyright © Jacob Ko
              All right reserved
              Created by SwiftUI with MVVM architecture
            """)
            .font(.footnote)
            .multilineTextAlignment(.center)
            .padding()
            .opacity(0.5)
        }
    }
}

struct CreditView_Previews: PreviewProvider {
    static var previews: some View {
        CreditView()
    }
}
