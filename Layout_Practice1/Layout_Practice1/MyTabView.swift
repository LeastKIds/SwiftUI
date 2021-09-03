//
//  MyTabView.swift
//  Layout_Practice1
//
//  Created by 김진홍 on 2021/09/03.
//

import SwiftUI

struct MyTabView : View {
    var body: some View {
        
        TabView {
//            Text("1")
//                .font(.largeTitle)
//                .fontWeight(.black)
            MyView(title:"1", bgColor: Color.red)
                .tabItem{
                    Image(systemName: "airplane")
                    Text("1")
                }
                .tag(0)
            
//            Text("2")
//                .font(.largeTitle)
//                .fontWeight(.black)
            MyView(title:"2", bgColor: Color.orange)
                .tabItem{
                    Image(systemName: "flame.fill")
                    Text("2")
                }
                .tag(1)
                
            
//            Text("3")
//                .font(.largeTitle)
//                .fontWeight(.black)
            MyView(title:"3",bgColor: Color.blue)
                .tabItem{
                    Image(systemName: "doc.fill")
                    Text("3")
                }
                .tag(2)

        }
    }
}

struct MyTabView_Previews : PreviewProvider {
    static var previews: some View {
        MyTabView()
    }
}
