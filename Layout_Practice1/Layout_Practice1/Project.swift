//
//  Project.swift
//  Layout_Practice1
//
//  Created by 김진홍 on 2021/09/01.
//

import SwiftUI

struct Project : View {
    
    var title : String = "test"
    var color : Color = Color.yellow
    var time : String = "time"
    
    var body: some View {
        
        VStack (alignment: .leading){
            
                Divider()
                    .opacity(0)
            
            
                Text(self.title)
                    .font(.system(size : 30))
                    .fontWeight(.heavy)
                
                Text(self.time)
                    .font(.system(size : 15))
                    .foregroundColor(Color.gray)
                    .padding(.bottom,20)
            
            HStack (spacing:15){
                Image("img1")
                    .frame(width : 50, height: 50)
                    .clipShape(Circle())
                    .overlay(Circle()
                                .stroke(Color.blue,lineWidth: 5))
                
                Image("img2")
                    .frame(width : 50, height : 50)
                    .clipShape(Circle())
                
                Image("img3")
                    .frame(width : 50, height: 50)
                    .clipShape(Circle())
                
                Text("확인")
                    .font(.system(size : 20))
                    .fontWeight(.bold)
                    .foregroundColor(Color.white)
                    .padding(20)
                    .background(Color.blue)
                    .cornerRadius(20)
                    .padding(.leading, 60)
                    
                
            }   // HStack

            }   //Vstack
            .padding(.leading,25)
            .frame(width : 380, height : 180)
            .background(self.color)
            .cornerRadius(10)
        
        
        
       
            
            
    }
}

struct Project_Previews : PreviewProvider {
    static var previews: some View {
        Project()
    }
}
