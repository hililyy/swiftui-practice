//
//  UserModelBasicView.swift
//  SwiftUIBasic
//
//  Created by 강조은 on 2023/09/13.
//

import SwiftUI

struct UserModelBasicView: View {
    
    @State var users: [UserModel] = [
        UserModel(displayName: "별이사랑해", userName: "별이1", followCount: 100, isChecked: true),
        UserModel(displayName: "아기고양이별이", userName: "별이2", followCount: 55, isChecked: false),
        UserModel(displayName: "일꼬마", userName: "별이3", followCount: 23, isChecked: false),
        UserModel(displayName: "콩콩", userName: "별이4", followCount: 49, isChecked: true)
    ]
    
    var body: some View {
        NavigationView {
            List {
                ForEach(users) { user in
                    HStack(spacing: 20) {
//                        Text(user.id)
                        Circle()
                            .frame(width: 35, height: 35)
                        
                        VStack(alignment: .leading, spacing: 5) {
                            
                            Text(user.displayName)
                                .font(.headline)
                            
                            Text("@\(user.userName)")
                                .font(.caption)
                                .foregroundColor(.gray)
                        }
                        
                        Spacer()
                        
                        if user.isChecked {
                            Image(systemName: "checkmark.seal.fill")
                                .foregroundColor(.blue)
                        }
                        
                        VStack {
                            Text("\(user.followCount)")
                                .font(.headline)
                            Text("Followers")
                                .font(.caption)
                                .foregroundColor(.gray)
                        }
                    }
                    .padding(.vertical, 10)
                }
            }
            .navigationTitle("회원 리스트")
        }
    }
}

struct UserModelBasicView_Previews: PreviewProvider {
    static var previews: some View {
        UserModelBasicView()
    }
}
