//
//  ContentView.swift
//  Picker
//
//  Created by 김진홍 on 2021/09/24.
//

import SwiftUI

struct ContentView: View {
    
    @State private var selectionValue = 0
    
    let myColorArray = ["red","green","blue"]
    
    func changeColor(index: Int) -> Color {
        switch index {
        case 0:
            return Color.red
        case 1:
            return Color.green
        case 2:
            return Color.blue
        default:
            return Color.red
        }
    }
    
    var body: some View {
        
        VStack (alignment : .center) {
            
            Circle()
                .foregroundColor(self.changeColor(index: self.selectionValue))
                .frame(width:50, height:50)
            
            Text("선택된 값 : \(selectionValue)")
            Text("선택된 색 : \(myColorArray[selectionValue])")
            
            Picker(selection: $selectionValue, label:Text(""), content: {
                Text("red").tag(0)
                Text("green").tag(1)
                Text("blue").tag(2)
            })  // Picker
            .pickerStyle(SegmentedPickerStyle())

            Picker(selection: $selectionValue, label:Text(""), content: {
                Text("red").tag(0)
                Text("green").tag(1)
                Text("blue").tag(2)
            })  // Picker
            .frame(width:50, height: 100)
            .clipped()
            .padding()
            .border(self.changeColor(index: self.selectionValue), width: 10)
            
        }   // VStack
        .padding(.horizontal, 50)
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
