//
//  ActionSheetBasic.swift
//  SwiftUIBasic
//
//  Created by 강조은 on 2023/09/13.
//

import SwiftUI

struct ActionSheetBasic: View {
    
    @State var showActionSheet: Bool = false
    @State var resultActionSheet: String = ""
    
    var body: some View {
        VStack {
            Text(resultActionSheet)
                .font(.largeTitle)
            
            Spacer()
            
            HStack {
                Circle()
                    .frame(width: 30, height: 30)
                
                Text("Jacob Ko")
                
                Spacer()
                
                Button {
                    showActionSheet.toggle()
                } label: {
                    Image(systemName: "ellipsis")
                }
            } // : HStack
            .padding(.horizontal)
            Rectangle()
                .aspectRatio(1.0, contentMode: .fit)
            Spacer()
        } // : VStack
        .actionSheet(isPresented: $showActionSheet) {
            // actionSheet 담기는 내용 ActionSheet type
            getActionSheet()
        }
    } // : Body
    
    func getActionSheet() -> ActionSheet {
        let shareButton: ActionSheet.Button = .default(Text("공유하기")) {
            resultActionSheet = "공유 되었습니다"
        }
        let reportButton: ActionSheet.Button = .default(Text("신고하기")) {
            resultActionSheet = "신고 되었습니다."
        }
        let deleteButton: ActionSheet.Button = .destructive(Text("삭제")){
            resultActionSheet = "삭제 되었습니다."
        }
        let cancelButton: ActionSheet.Button = .cancel()
        
        return ActionSheet(
            title: Text("ActionSheet 제목"),
            message: Text("ActionSheet 내용"),
            buttons: [shareButton, reportButton, deleteButton, cancelButton])
    }
}

struct ActionSheetBasic_Previews: PreviewProvider {
    static var previews: some View {
        ActionSheetBasic()
    }
}
