//
//  MyView.swift
//  Layout_Practice1
//
//  Created by 김진홍 on 2021/09/03.
//

import SwiftUI

struct MyView : View {
    
    var title : String
    var bgColor : Color
    
    var body: some View {
        ZStack {
            bgColor
                .edgesIgnoringSafeArea(.all)
            Text(self.title)
                .font(.largeTitle)
                .fontWeight(.black)
                .foregroundColor(Color.white)
        }
    }
}


struct MyView_Previews : PreviewProvider {
    static var previews: some View {
        MyView(title : "test", bgColor: Color.orange)
    }
}
