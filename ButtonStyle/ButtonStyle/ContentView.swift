//
//  ContentView.swift
//  ButtonStyle
//
//  Created by 김진홍 on 2021/09/07.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Button(
                action : {
                    print("button clicked!")
                }, label : {
                    Text("Tab")
                        .fontWeight(.bold)
                })
                .buttonStyle(MyButtonStyle(color: Color.blue, type: .tab))
            
            Button(
                action : {
                    print("button clicked!")
                }, label : {
                    Text("Long")
                        .fontWeight(.bold)
                })
                .buttonStyle(MyButtonStyle(color: Color.green, type: .long))
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
