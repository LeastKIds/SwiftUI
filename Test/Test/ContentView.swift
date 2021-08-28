 //
//  ContentView.swift
//  Test
//
//  Created by 김진홍 on 2021/08/27.
//

import SwiftUI

struct ContentView: View {
    
    // @State : 값으 변화를 감지해서 변화하면 새로고침
    @State
    private var isActivated: Bool = false
    
    var body: some View {
        
        NavigationView {
            
            VStack {
                HStack {
                    MyVstackView()
                    MyVstackView()
                    MyVstackView()

                }
                .padding(isActivated ? 50 : 10)
                .background(isActivated ? Color.gray : Color.black)
                // 탭 제스쳐 추가
                .onTapGesture {
                    print("HStack 이 클릭되었다.")
                    
                    // 애니메이션
                    withAnimation{
                        // toggle() : isActivated = !isActivated
                        self.isActivated.toggle()
                    }
                    
                    
                    
                }   // HStack
                
                NavigationLink(destination: MyTextView()) {
                    Text("네비게이션")
                        .fontWeight(.bold)
                        .font(.system(size : 40))
                        .padding()
                        .background(Color.orange)
                        .foregroundColor(Color.white)
                        .cornerRadius(30)
                }.padding(.top, 50)
                
                
                }   // NavigationView
            
            }   // VStack
            
        
       
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
 
 
