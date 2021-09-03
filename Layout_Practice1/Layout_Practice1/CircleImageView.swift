//
//  CircleImageView.swift
//  Layout_Practice1
//
//  Created by 김진홍 on 2021/09/03.
//

import SwiftUI

struct CircleImageView : View {
    var body : some View {
//        Image(systemName : "bolt.circle")
//            .font(.system(size : 200))
//            .foregroundColor(Color.yellow)
//            .shadow(color: Color.gray, radius: 5, x: 10, y: 10)
        Image("img1")
            .resizable()    // 화면에 맞게
            .scaledToFit()    // aspectRatio(contentMode: .fit)과 같음
//            .scaledToFill() // aspectRatio(contentMode: .fill)과 같음
//            .aspectRatio(contentMode: .fill)    // fill : 위 아래가 맞게, fit : 좌 우가 맞게
            .frame(width : 300, height: 300) // 가운데 기준 200의 길이를 가지고 있지만, 더 큰 이미지가 그 위를 덮어버림. 높이까지 맞추면 비율 맞게 조정 됨
//            .clipped()  // 해당 범위를 넘어가면 잘라 버림
            .clipShape(Circle())    // 화면을 동그랗게 자르가
            .shadow(color: Color.red, radius: 10, x: 5, y: 10)
            .overlay(Circle()
                        .foregroundColor(Color.black)
                        .opacity(0.5))
            .overlay(Circle().stroke(Color.red, lineWidth: 10).padding()) // 그 위에 덮기. stroke 내용물 비우고 테두리만 남기기, Color.red : 테두리 색, lineWidth : 테두리 굵기
//            .edgesIgnoringSafeArea(.all)    // 위 아래에 꽉 차게(노치 무시)
            .overlay(Circle().stroke(Color.yellow, lineWidth: 10).padding(30))
            .overlay(Circle().stroke(Color.blue, lineWidth: 10))
            .overlay(
                Text("호호")
                    .foregroundColor(Color.white)
                    .font(.system(size : 50))
                    .fontWeight(.bold)
            )


        
    }
}


struct CircleImageView_Previews: PreviewProvider {
    static var previews: some View {
        CircleImageView()
    }
}
