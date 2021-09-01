//
//  ContentView.swift
//  Layout_Practice1
//
//  Created by 김진홍 on 2021/09/01.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
            VStack (alignment : .leading, spacing : 10){
                
                Divider()
                    .opacity(0)
                
                Text("정대리 할 일목록")
                    .font(.system(size : 40))
                    .fontWeight(.bold)
                
                Project(title : "정대리 유튭 프로젝트", color : Color.yellow, time : "10 AM ~ 11AM")
                
                Pannel(img : "flame.fill", color : Color.purple, imgColor : Color.white, title : "유튭 라이브 버닝", titleColor : Color.white, time : "8PM ~ 9AM")
                
                Pannel(img : "ipad.landscape", color : Color.red, imgColor: Color.white, title : "영상 다시보기", titleColor : Color.white, time : "10AM ~ 11AM")
                
                Pannel(img : "cart", color : Color.orange, imgColor : Color.white, title : "마트 장보기", titleColor : Color.white, time : "10AM ~ 11AM")
                
                Pannel(img : "gamecontroller", color : Color.blue, imgColor : Color.white, title : "히오스 한판하기", titleColor : Color.white, time : "2PM ~ 3PM")
                
                Spacer()
                
            }   // VStack
            .padding(.leading)
        }
        
        
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
