//
//  ContentView.swift
//  TextInput
//
//  Created by 김진홍 on 2021/09/07.
//

import SwiftUI

struct ContentView: View {
    
    @State private var userName: String = ""
    @State private var password: String = ""
    
    var body: some View {
        
        VStack (spacing : 10){
            
            HStack {
                TextField("사용자이름을 입력해 주세요", text: $userName)
                    .autocapitalization(.none)
                    .disableAutocorrection(true)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    
                
                Button(action : {
                    self.userName = ""
                }) {
                    
                    if (self.userName.count > 0) {
                        Image(systemName: "multiply.circle.fill")
                            .foregroundColor(Color.secondary)
                            .font(.system(size : 25))
                    }
                    
                }
            }   // HStack
            
            HStack {
                SecureField("비밀번호를 입력해 주세요", text : $password)
                    .autocapitalization(.none)
                    .disableAutocorrection(true)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                
                Button(action : {
                    self.password = ""
                }) {
                    
                    if(self.password.count > 0) {
                        Image(systemName: "multiply.circle.fill")
                            .foregroundColor(Color.secondary)
                            .font(.system(size : 25))
                    }
                    
                }
            }   // HStack
        
            Text("입력한 비번 : \(password)")
            
            if(self.password.count > 0) {
                Text("test")
            }
            

        }   // VStack
        .padding(.horizontal, 50)
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
