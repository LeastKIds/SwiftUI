//
//  MyZStack.swift
//  Stack
//
//  Created by 김진홍 on 2021/09/01.
//

import SwiftUI

struct MyZStack : View {
    var body: some View {
      
        ZStack {
            
            
            Rectangle()
                .frame(width:150, height:150)
                .foregroundColor(Color.blue)
                .zIndex(1)
                .offset(y:-100)
            
            Rectangle()
                .frame(width:100, height : 100)
                .foregroundColor(Color.red)
                .zIndex(2)
            
            Rectangle()
                .frame(width:50, height : 50)
                .foregroundColor(Color.yellow)
                .zIndex(3)
        }
    }
}

struct MyZStack_Previews : PreviewProvider {
    static var previews: some View {
        MyZStack()
    }
}

