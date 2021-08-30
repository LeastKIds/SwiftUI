//
//  ContentView.swift
//  Text
//
//  Created by 김진홍 on 2021/08/30.
//

import SwiftUI

struct ContentView: View {
    
    static let dateFormat: DateFormatter = {
        let formatter = DateFormatter()
        formatter.dateFormat = "YYYY년 M월 d일"    // 해당 양식으로 포맷
        return formatter
    }()
    
    var today = Date()
    
    var trueOrFalse : Bool = false
    
    var body: some View {
        
        VStack {
            Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.")
                .tracking(2)    // 글자 간격
                .font(.system(.body, design : .rounded))    // desing : .rounded => 글자가 살짝 둥근형태
                .fontWeight(.medium)    // 글자 크기
                // 정렬 왼쪽 : leading, 가운데 : center, 오른쪽 : trailing
                .multilineTextAlignment(.center)
                .lineLimit(nil) //  최대 몇 줄
                .lineSpacing(5) // 줄 간격
                .truncationMode(.head)  // 생략 부분 tail : 오른쪽 끝, head : 왼쪽 끝, middle : 중간
                // 글자 그림자 color : 색, radius : 곡률, x, y : 위치
                .shadow(color : Color.red, radius : 4, x:-10, y:10)
                
                .padding(.all, 20)  // 패딩
                .background(Color.yellow)   // 배경
                .cornerRadius(10)   // 모서리
                .padding()  // 노란색 배경 위에 패딩을 씌움
                .background(Color.green)
                .cornerRadius(10)
                .padding()
            
            Text("\(today, formatter: ContentView.dateFormat)")
                .background(Color.gray)
                .foregroundColor(Color.white)
            
            Text("참 혹은 거짓 : \(String(trueOrFalse))")
        }
        
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
