//
//  MyWebView.swift
//  image
//
//  Created by 김진홍 on 2021/08/30.
//

import SwiftUI
import WebKit

struct MyWebView: UIViewRepresentable {
    
    var url : String
    
    func makeUIView(context: Context) -> WKWebView {
        guard let url = URL(string: self.url) else {
            return WKWebView()
        }
        
        let urlRequest = URLRequest(url : url)
        let wkWebview = WKWebView()
        wkWebview.load(urlRequest)
        return wkWebview
    }
    
    func updateUIView(_ uiView: WKWebView, context: UIViewRepresentableContext<MyWebView>) {
        
    }
    
    
    
}
