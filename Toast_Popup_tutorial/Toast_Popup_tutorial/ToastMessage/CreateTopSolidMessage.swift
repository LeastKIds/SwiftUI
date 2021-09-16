//
//  CreateTopSolidMessage.swift
//  Toast_Popup_tutorial
//
//  Created by 김진홍 on 2021/09/15.
//

import SwiftUI

struct CreateTopSolidMessage : View {
    var body: some View {
        HStack (spacing : 10){
            
            Image("img2")
                .resizable()
                .aspectRatio(contentMode: ContentMode.fill)
                .frame(width : 60, height: 60)
                .cornerRadius(10)
            
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
        .padding(.top, UIApplication.shared.windows.first?.safeAreaInsets.bottom == 0 ? 0 : 35)  // 화면에 따른 패딩 값이 다름
        .background(Color.purple)
    }
}


struct CreateTopSolidMessage_Previews: PreviewProvider {
    static var previews: some View {
        CreateTopSolidMessage()
    }
}
