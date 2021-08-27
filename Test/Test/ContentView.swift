 //
//  ContentView.swift
//  Test
//
//  Created by 김진홍 on 2021/08/27.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        HStack {
            MyVstackView()
        }
        .padding(.top,10)
        .background(Color.gray)
       
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
 
 
