//
//  MyTextView.swift
//  Test
//
//  Created by 김진홍 on 2021/08/27.
//

import SwiftUI

struct MyTextView: View {
    
    var body: some View {
        VStack {
            Spacer()
            
            Text("배경 아이템 인덱스")
                .font(.system(size : 30))
                .fontWeight(.bold)
//                .frame(minWidth : 0, maxWidth: .infinity,
//                       minHeight: 0, maxHeight: .infinity)
            
            Spacer()
        }
        .background(Color.red)
        .edgesIgnoringSafeArea(.all)
    }
}

struct MyTextView_Previews: PreviewProvider {
    static var previews: some View {
        MyTextView()
    }
}
