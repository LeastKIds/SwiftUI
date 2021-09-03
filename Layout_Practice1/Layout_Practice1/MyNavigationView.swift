//
//  MyNavigationView.swift
//  Layout_Practice1
//
//  Created by 김진홍 on 2021/09/03.
//

import SwiftUI

struct MyNavigationView : View {
    var body: some View {
        
        NavigationView {

            MyList()
//                .navigationBarTitle("Hello!")
                .navigationBarItems(leading: Button(action : {
                    print("HOHO")
                }) {
                    Text("HOHO")
                }, trailing: Button(action : {
                    print("넘어온 화면입니다.")
                }) {
//                    Text("네비게이션")
                    Image(systemName: "bookmark.fill")
                        .font(.system(size : 25))
                        .foregroundColor(Color.black)
                })
        }
    }
}


struct MyNavigationView_PreviewProvider : PreviewProvider{
    static var previews: some View {
        MyNavigationView()
    }
}
