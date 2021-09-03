//
//  MyGeometryReader.swift
//  Layout_Practice1
//
//  Created by 김진홍 on 2021/09/03.
//

import SwiftUI

struct MyGeometryReader : View {
    var body: some View {
        
        GeometryReader { geometryReader in
            
            HStack ( spacing : 0){
                
                
                Text("1")
                    .font(.largeTitle)
                    .fontWeight(.black)
                    .frame(width:geometryReader.size.width/4)
                    .background(Color.red)
                    .foregroundColor(Color.white)
                
                Text("2")
                    .font(.largeTitle)
                    .fontWeight(.black)
                    .frame(width:geometryReader.size.width/4)
                    .background(Color.blue)
                    .foregroundColor(Color.white)
                
                Text("3")
                    .font(.largeTitle)
                    .fontWeight(.black)
                    .frame(width:geometryReader.size.width/4)
                    .background(Color.green)
                    .foregroundColor(Color.white)
                
                Text("4")
                    .font(.largeTitle)
                    .fontWeight(.black)
                    .frame(width:geometryReader.size.width/4)
                    .background(Color.purple)
                    .foregroundColor(Color.white)
                
                
            }   // HStack
            .background(Color.yellow)
            
            
        }   // GeometryReader
        .background(Color.black)
        
        
        
    }
}


struct MyGeometryReader_Previews: PreviewProvider {
    static var previews: some View {
        MyGeometryReader()
    }
}
