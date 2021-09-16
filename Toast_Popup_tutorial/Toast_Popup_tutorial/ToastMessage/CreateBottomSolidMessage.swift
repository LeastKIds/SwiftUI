//
//  CreateBottomSolidMessage.swift
//  Toast_Popup_tutorial
//
//  Created by 김진홍 on 2021/09/15.
//

import SwiftUI

struct CreateBottomSolidMessage : View {
    var body: some View {
        HStack (spacing : 10){
            
            Image(systemName : "book.fill")
                .font(.system(size : 40))
                .foregroundColor(Color.white)
//                        .background(Color.yellow)
            
            VStack (alignment : .leading){
                Text("안내 메시지")
                    .foregroundColor(Color.white)
                    .fontWeight(.black)

                Text("토스트 메세지 입니다adaadfasdfadfadsfadsfasdasdfasdfasdfasdfafdadsfasfasdfasdfasdfasfafasdfsadfasfd")
                    .lineLimit(2)
                    .foregroundColor(Color.white)
                    .font(.system(size : 14))
                
                Divider().opacity(0)
//                        Spacer().frame(height : 40)

            }   // VStack
//                    .background(Color.red)
                
        }   // HStack
        .padding(.vertical, 5)
        .padding(.horizontal, 10)
        .frame(width : UIScreen.main.bounds.width)
        .padding(.bottom, UIApplication.shared.windows.first?.safeAreaInsets.bottom == 0 ? 0 : 15)  // 화면에 따른 패딩 값이 다름
        .background(Color.purple)
    }
}


struct CreateBottomSolidMessage_Previews: PreviewProvider {
    static var previews: some View {
        CreateBottomSolidMessage()
    }
}

