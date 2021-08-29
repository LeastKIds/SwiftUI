//
//  ContentView.swift
//  WebView
//
//  Created by 김진홍 on 2021/08/28.
//

import SwiftUI

struct ContentView: View {
    
    private var text:String = "test"
    private var fontSize:CGFloat = 30
    private var fontWeight:Font.Weight = .bold
    private var padding:CGFloat = 20
    private var background:Color = Color.yellow
    private var foregroundColor:Color = Color.red
    private var cornerRadius:CGFloat = 10

    var body: some View {
        
        
            
            NavigationView {
                
                VStack {
                    
                    NavigationLink(
                        destination: MyWebView(urlToLoad: "https://naver.com")
                            .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)){
                        
                        Text("네이버")
                            .font(.system(size : 20))
                            .fontWeight(.bold)
                            .padding(20)
                            .background(Color.green)
                            .foregroundColor(Color.white)
                            .cornerRadius(20)
                        
                    }   //  NavigationLink
                    
                    NavigationLink(
                        destination: MyWebView(urlToLoad: "https://daum.net")
                            .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)) {
                        
                        Text("다음")
                            .font(.system(size : 20))
                            .fontWeight(.bold)
                            .padding(20)
                            .background(Color.blue)
                            .foregroundColor(Color.white)
                            .cornerRadius(20)
                        
                    }   //  NavigationLink
                    
                    NavigationLink(
                        destination: MyWebView(urlToLoad: "https://google.com")
                            .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)) {
                        
                        Text("구글")
                            .font(.system(size : 20))
                            .fontWeight(.bold)
                            .padding(20)
                            .background(Color.orange)
                            .foregroundColor(Color.white)
                            .cornerRadius(20)
                        
                    }   //  NavigationLink
                    
                    TextAtribute(text : self.text, fontSize: self.fontSize, fontWeight: self.fontWeight,
                                 padding: self.padding,
                                 background: self.background,
                                 foregroundColor: self.foregroundColor,
                                 cornerRadius: self.cornerRadius)
                }   // HStack
                
            }   // NavigationView
            
        
        

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
