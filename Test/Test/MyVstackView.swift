//
//  MyVstackView.swift
//  Test
//
//  Created by 김진홍 on 2021/08/27.
//

import SwiftUI

struct MyVstackView : View {
   
   var body: some View {
       VStack {
           Text("1!")
               .fontWeight(.bold)
               .font(.system(size:60))
               .background(Color.red)
           Text("2!")
               .fontWeight(.bold)
               .font(.system(size:60))
               .background(Color.yellow)
           Text("3!")
               .fontWeight(.bold)
               .font(.system(size:60))
           
       }
       .background(Color.green)
   }
}

// 보여주는 용도
//struct MyVstackView_Previews: PreviewProvider {
//    static var previews: some View {
//        MyVstackView()
//    }
//}
