//
//  MyGeometryReaderVStack.swift
//  Layout_Practice1
//
//  Created by 김진홍 on 2021/09/03.
//


import SwiftUI

enum Index {
    case one, two, three
}

struct MyGeometryReaderVStack : View {
    
    @State var index : Index = .one
    
    let centerPosition : (GeometryProxy) -> CGPoint = { proxy in
        return CGPoint(x : proxy.frame(in: .local).midX,
                       y : proxy.frame(in: .local).midY)
    }
    
    var body: some View {
        
        GeometryReader { proxy in
            
            VStack {
                
                
                Button(action : {
                    print("1 click")
                    
                    withAnimation {
                        self.index = .one
                    }
                    
                }) {
                    Text("1")
                        .font(.largeTitle)
                        .fontWeight(.black)
                        .frame(width : 100, height: proxy.size.height/3)
                        .padding(.horizontal, self.index == .one ? 50 : 0)
                        .foregroundColor(Color.white)
                        .background(Color.red)
                }
                
                Button(action : {
                    print("2 click")
                    
                    withAnimation {
                        self.index = .two
                    }
                }) {
                    Text("2")
                        .font(.largeTitle)
                        .fontWeight(.black)
                        .frame(width : 100, height: proxy.size.height/3)
                        .padding(.horizontal, self.index == .two ? 50 : 0)
                        .foregroundColor(Color.white)
                        .background(Color.blue)
                }
                
               
                Button(action : {
                    print("3 click")
                    
                    withAnimation {
                        self.index = .three
                    }
                    
                    
                }) {
                    Text("3")
                        .font(.largeTitle)
                        .fontWeight(.black)
                        .frame(width : 100, height: proxy.size.height/3)
                        .padding(.horizontal, self.index == .three ? 50 : 0)
                        .foregroundColor(Color.white)
                        .background(Color.green)
                }
                
                
            }
            .position(centerPosition(proxy))
            
        }   // geometryReader
        .background(Color.yellow)
    }
}

struct MyGeometryReaderVStack_Previews : PreviewProvider {
    static var previews: some View {
        MyGeometryReaderVStack()
    }
}
