//
//  Pannel.swift
//  Layout_Practice1
//
//  Created by 김진홍 on 2021/09/01.
//

import SwiftUI

struct Pannel : View {
    
    var img : String = "flame"
    var color : Color = Color.green
    var imgColor : Color = Color.red
    var title : String = "title"
    var titleColor : Color = Color.red
    var time : String = "time"
    
    var body: some View {
        
        VStack (alignment : .leading){
            
            Divider()
                .opacity(0)
            
            HStack {
                
                Divider()
                    .opacity(0)
                
                Image(systemName : self.img)
                    .font(.system(size : 50))
                    .foregroundColor(self.imgColor)
                
                VStack (alignment : .leading){
                    
                    
                    Text(self.title)
                        .font(.system(size : 25))
                        .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                        .foregroundColor(self.titleColor)
//                        .padding(.leading,15)
                    
                    Text(self.time)
                        .font(.system(size : 15))
                        .foregroundColor(self.titleColor)
                        
                }
                    
                
            }   // HStack
        }
        .frame(width : 380, height : 80)
        .background(self.color)
        .cornerRadius(10)
    }
}

struct Pannel_Previews : PreviewProvider {
    static var previews: some View {
        Pannel()
    }
}
