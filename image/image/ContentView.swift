//
//  ContentView.swift
//  image
//
//  Created by 김진홍 on 2021/08/30.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        NavigationView {
            
            VStack {
                CircleImageView()
                
                HStack {
                    NavigationLink(
                        destination: MyWebView(url: "www.naver.com/")) {
                        Text("네이버")
                            .font(.system(size : 30))
                            .padding()
                            .background(Color.red)
                            .foregroundColor(Color.white)
                            .cornerRadius(20)
                    }
                    
                    NavigationLink(
                        destination: MyWebView(url: "https://www.daum.net")) {
                        Text("다음")
                            .font(.system(size : 30))
                            .padding()
                            .background(Color.blue)
                            .foregroundColor(Color.white)
                            .cornerRadius(20)
                            .padding(.leading,20)
                    }
                    
                }.padding(20)

            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
