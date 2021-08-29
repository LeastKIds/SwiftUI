//
//  TextAtribute.swift
//  WebView
//
//  Created by 김진홍 on 2021/08/29.
//

import SwiftUI

struct TextAtribute : View{
    
    var text: String
    var fontSize:CGFloat
    var fontWeight:Font.Weight
    var padding:CGFloat
    var background:Color
    var foregroundColor:Color
    var cornerRadius:CGFloat
    
    
    
    
//    @Binding
//    var fontSize:CGFloat
//    var fontWeight1:String
//    var padding:Int
//    var background:String
//    var foregroundColor:String
//    var cornerRadius:Int
    
    
    
    var body: some View {
        
        Text(self.text)
            .font(.system(size : self.fontSize))
            .fontWeight(self.fontWeight)
            .padding(self.padding)
            .background(self.background)
            .foregroundColor(self.foregroundColor)
            .cornerRadius(self.cornerRadius)
            
        
    }
}



