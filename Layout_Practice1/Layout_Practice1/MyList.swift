//
//  MyList.swift
//  Layout_Practice1
//
//  Created by 김진홍 on 2021/09/02.
//

import SwiftUI

struct MyList : View {
    
    @Binding var isNavigationBarHidden : Bool
    
    init(isNavigationBarHidden : Binding<Bool> = .constant(false)) {
        if #available(iOS 14.0, *) {
            // iOS 14 doesn't have extra separators below the list by default.
        } else {
            // To remove only extra separators below the list:
            UITableView.appearance().tableFooterView = UIView()
        }

        // To remove all separators including the actual ones:
        UITableView.appearance().separatorStyle = .none
        
        _isNavigationBarHidden = isNavigationBarHidden
    }
    
    var body: some View {
        
//        List {
//            ForEach(1...10, id: \.self) {
//                Text("MyList \($0)")
//            }
//        }
        
        List {
            
            Section(header:
                        Text("오늘 할 일")
                        .font(.headline)
                        .foregroundColor(Color.black)
                    
                    , footer : Text("footer")) {
                ForEach(1...10, id: \.self) { itemIndex in
                    Pannel(img : "flame.fill", color : Color.purple, imgColor : Color.white, title : "유튭 라이브 버닝 \(itemIndex)", titleColor : Color.white, time : "8PM ~ 9AM")
                }   // ForEach
            }   // Section
            .listRowInsets(EdgeInsets.init(top: 10, leading: 10, bottom: 10, trailing: 10))
                
            Section(header:
                        Text("내일 할 일")
                        .font(.headline)
                        .foregroundColor(Color.black)
                    
                    , footer : Text("footer") ) {
                ForEach(1...10, id: \.self) { itemIndex in
                    Pannel(img : "flame.fill", color : Color.blue, imgColor : Color.white, title : "유튭 라이브 버닝 \(itemIndex)", titleColor : Color.white, time : "8PM ~ 9AM")
                }   // ForEach
            }   // Section
            .listRowInsets(EdgeInsets.init(top: 10, leading: 30, bottom: 10, trailing: 10))
            .listRowBackground(Color.yellow)

           
        }   // List
        .listStyle(GroupedListStyle())
        .navigationBarTitle("내 목록")
        .navigationBarHidden(self.isNavigationBarHidden)
        .onAppear{
            self.isNavigationBarHidden = false
        }
        
    }   // NvigationView
}


struct MyList_Previews: PreviewProvider {
    static var previews: some View {
        MyList()
    }
}
