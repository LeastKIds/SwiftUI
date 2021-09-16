//
//  CreateBottomToastMessage.swift
//  Toast_Popup_tutorial
//
//  Created by 김진홍 on 2021/09/15.
//

import SwiftUI

struct CreateBottomToastMessage : View {
    var body: some View {
        HStack (alignment : .top, spacing : 10){
            
            Image("img1")
                .resizable()
                .aspectRatio(contentMode : ContentMode.fill)
                .frame(width : 60, height: 60)
                .cornerRadius(10)
//                        .background(Color.yellow)
            
            VStack (alignment : .leading){
                Text("사아슴")
                    .foregroundColor(Color.white)
                    .fontWeight(.black)

                Text("토스트 메세지 입니다adaadfasdfadfadsfadsfasdasdfasdfasdfasdfafdadsfasfasdfasdfasdfasfafasdfsadfasfdadaadfasdfadfadsfadsfasdasdfasdfasdfasdfafdadsfasfasdfasdfasdfasfafasdfsadfasfdadaadfasdfadfadsfadsfasdasdfasdfasdfasdfafdadsfasfasdfasdfasdfasfafasdfsadfasfdadaadfasdfadfadsfadsfasdasdfasdfasdfasdfafdadsfasfasdfasdfasdfasfafasdfsadfasfdadaadfasdfadfadsfadsfasdasdfasdfasdfasdfafdadsfasfasdfasdfasdfasfafasdfsadfasfd")
                    .foregroundColor(Color.white)
                    .font(.system(size : 14))
                
                Divider().opacity(0)
//                        Spacer().frame(height : 40)

            }   // VStack
//                    .background(Color.red)
                
        }   // HStack
        .frame(width : 300)
        .padding()
        .background(Color.green)
        .cornerRadius(20)
    }
}


struct CreateBottomToastMessage_Previews: PreviewProvider {
    static var previews: some View {
        CreateBottomToastMessage()
    }
}
