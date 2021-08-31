//
//  MyVstackView.swift
//  Test
//
//  Created by 김진홍 on 2021/08/27.
//

import SwiftUI

struct MyVstackView : View {
    
    // data connection
    var isActivated: Bool
    
    // 생성자
//    init(isActivated: Binding<Bool> = .constant(false)) {
//        _isActivated = isActivated
//    }
    
   
   var body: some View {
       VStack {
           Text("1!")
               .fontWeight(.bold)
               .font(.system(size:60))
           Text("2!")
               .fontWeight(.bold)
               .font(.system(size:60))
           Text("3!")
               .fontWeight(.bold)
               .font(.system(size:60))
           
       }    //  VStack
       .background(self.isActivated ? Color.green : Color.red)
       .padding(self.isActivated ? 10 : 0)
   }
}

// 보여주는 용도
//struct MyVstackView_Previews: PreviewProvider {
//    static var previews: some View {
//        MyVstackView()
//    }
//}
