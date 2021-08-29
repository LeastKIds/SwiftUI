//
//  MyWebView.swift
//  WebView
//
//  Created by 김진홍 on 2021/08/28.
//

import SwiftUI
import WebKit

// UIkit 의 UIview를 사용할 수 있도록 함
// ui controller를 사용하고 싶으면 UIViewControllerResponsetable 를 사용하면 됨
struct MyWebView : UIViewRepresentable{
    
    var urlToLoad: String
    
    // ui view 만들기
    func makeUIView(context: Context) -> WKWebView {
        
        // unwrapping
        // 만약 urlToLoad에 값이 없다면 WKWebView를 반환함
        guard let url = URL(string: self.urlToLoad) else {
            return WKWebView()
        }
        
        // 웹뷰 인스턴스 생성
        let webView = WKWebView()
        
        // 웹뷰를 로드한다.
        webView.load(URLRequest(url: url))
        return webView
        
    }
    
    func updateUIView(_ uiView: WKWebView, context: UIViewRepresentableContext<MyWebView>) {
        
    }
}


struct MyWebView_Previews: PreviewProvider {
    static var previews: some View {
        MyWebView(urlToLoad: "https://www.naver.com")
    }
}
