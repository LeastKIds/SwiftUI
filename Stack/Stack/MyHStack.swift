//
//  MyHStack.swift
//  Stack
//
//  Created by 김진홍 on 2021/09/01.
//

import SwiftUI

struct MyHStack : View {
    
    var body: some View {
        
        HStack (alignment: .bottom){
            
//            Divider()
            
//            Rectangle()
//                .frame(width: 100)  // 높이가 없기 때문에 화면을 꽉 채움
//                .foregroundColor(Color.red)
            
//            Rectangle()
//                .frame(width: 100, height: 100)
//                .foregroundColor(Color.red)
            Image(systemName: "flame.fill")
                .foregroundColor(Color.white)
                .font(.system(size : 70))
            
            Rectangle()
                .frame(width: 100, height: 100)
                .foregroundColor(Color.yellow)
            
            Rectangle()
                .frame(width: 100, height: 100)
                .foregroundColor(Color.blue)
            
        }   // HStack
        .padding()
        .background(Color.green)
    }
}


struct MyHStack_Previews : PreviewProvider {
    static var previews: some View {
        MyHStack()
    }
}
