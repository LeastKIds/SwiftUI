//
//  Project.swift
//  Layout_Practice1
//
//  Created by 김진홍 on 2021/09/01.
//

import SwiftUI

struct Project : View {
    
    @State var shouldShowAlert: Bool = false
    
    var title : String = "test"
    var color : Color = Color.yellow
    var time : String = "time"
    
    var body: some View {
        
        VStack (alignment: .leading){
            
//                Divider()
//                    .opacity(0)
            
            Rectangle()
                .frame(height:0)
            
            
                Text(self.title)
                    .font(.system(size : 30))
                    .fontWeight(.heavy)
                
                Text(self.time)
                    .font(.system(size : 15))
                    .foregroundColor(Color.secondary)
            
            Spacer().frame(height : 20)
            
            HStack (spacing:15){
                Image("img1")
                    .resizable()
                    .frame(width : 50, height: 50)
                    .clipShape(Circle())
                    .overlay(Circle()
                                .stroke(Color.blue,lineWidth: 5))
                
                Image("img2")
                    .resizable()
                    .frame(width : 50, height : 50)
                    .clipShape(Circle())
                
                Image("img3")
                    .resizable()
                    .frame(width : 50, height: 50)
                    .clipShape(Circle())
                
                Spacer()
                
                Button(action : {
                    print("확인 버튼이 눌렸어")
                    self.shouldShowAlert = true
                }) {
                    Text("확인")
                        .font(.system(size : 20))
                        .fontWeight(.bold)
                        .foregroundColor(Color.white)
                        .padding()
                        .frame(width : 80)
                        .background(Color.blue)
                        .cornerRadius(20)
                }.alert(isPresented: $shouldShowAlert) {
                    Alert(title:Text("경고창"))
                }
               
                    
                
            }   // HStack

            }   //Vstack
            .padding(30)
            .background(self.color)
            .cornerRadius(10)
        
        
        
       
            
            
    }
}

struct Project_Previews : PreviewProvider {
    static var previews: some View {
        Project()
    }
}
