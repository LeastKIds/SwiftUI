//
//  MyVStack.swift
//  Stack
//
//  Created by 김진홍 on 2021/09/01.
//

import SwiftUI


struct MyVStack : View {
    
    var body : some View {
        
        VStack(alignment: .trailing, spacing : 0){   // .trailing : 가운데에서 정렬 상태에서 오른쪽 정렬 spacing : 객체간 간격
            
            Divider()   // 가운데 정렬 무시. 문제점 : 희미하게 배경 색과 차이가 있음
                .opacity(0) // 투명도를 0으로 두어 희미하게 보이는 선 없앰
//
//            Rectangle()
//                .frame(height : 0)
            
//            Spacer()

            
            Text("text")
                .font(.system(size : 30))
                .fontWeight(.heavy)
//                .padding(.bottom,100)
            
            
            
            Rectangle()
                .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/)
                .foregroundColor(Color.red)
//                .padding(.vertical, 100)
            
            Rectangle()
                .frame(width: 100, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/)
                .foregroundColor(Color.yellow)
            
            Spacer()    // 그만큼 빈 공간을 차지
                .frame(height : 50)
            

            
            Rectangle()
                .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/)
                .foregroundColor(Color.blue)
            
            
//            Spacer()    // 1/n 지점에 놓임
//            Spacer()
//            Spacer()


            
            
        }   // VStack
        .frame(width: 300)
        .background(Color.green)
        
        
    }
}


struct MyVStack_Previews : PreviewProvider {
    static var previews: some View {
        MyVStack()
    }
}
