//
//  ContentView.swift
//  Toast_Popup_tutorial
//
//  Created by 김진홍 on 2021/09/13.
//

import SwiftUI
import ExytePopupView

struct ContentView: View {
    
    @State var shouldShowBottomSolidMessage : Bool = false
    @State var shouldShowBottomToastMessage : Bool = false
    @State var shouldShowTopToastMessage : Bool = false

    
    var body: some View {
        
        ZStack {
            
            VStack (spacing : 10){
                
                Spacer()
                
                Button(action : {
                    self.shouldShowBottomSolidMessage = true
                }, label : {
                    Text("바텀 솔리드 메세지")
                        .font(.system(size : 25))
                        .fontWeight(.bold)
                        .foregroundColor(Color.white)
                        .padding()
                        .background(Color.purple)
                        .cornerRadius(10)
                })
                
                Button(action : {
                    self.shouldShowBottomToastMessage = true
                }, label : {
                    Text("바텀 토스트 메세지")
                        .font(.system(size : 25))
                        .fontWeight(.bold)
                        .foregroundColor(Color.white)
                        .padding()
                        .background(Color.green)
                        .cornerRadius(10)
                })
                
                Button(action : {
                    self.shouldShowTopToastMessage = true
                }, label : {
                    Text("탑 토스트 메세지")
                        .font(.system(size : 25))
                        .fontWeight(.bold)
                        .foregroundColor(Color.white)
                        .padding()
                        .background(Color.blue)
                        .cornerRadius(10)
                })
                
                Spacer()
                
                
                
                
               
                
            }   // VStack
            
        }   // ZStack
        .edgesIgnoringSafeArea(.all)    // 아래로 붙이기
        .popup(isPresented: $shouldShowBottomSolidMessage, type: .floater(verticalPadding: 20), position: .bottom, animation: .easeInOut, autohideIn: 2, closeOnTap: true, closeOnTapOutside: true, view: {
            ToastMessage(CreateBottomToastMessage)()
        })
        
        .popup(isPresented: $shouldShowBottomToastMessage, type: .floater(verticalPadding: 50), position: .bottom, animation: .spring(), autohideIn: 2, closeOnTap: true, closeOnTapOutside: true, view: {
            ToastMessage;\CreateBottomToastMessage()
        })
        
        .popup(isPresented: $shouldShowTopToastMessage, type: .floater(verticalPadding: 20), position: .top, animation: .easeInOut, autohideIn: 2, closeOnTap: true, closeOnTapOutside: true, view: {
            ToastMessage;\CreateBottomToastMessage()
        })
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
  
