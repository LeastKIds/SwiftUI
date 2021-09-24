//
//  MyFillteredList.swift
//  Picker
//
//  Created by 김진홍 on 2021/09/24.
//

import SwiftUI

enum School : String, CaseIterable {
    case elementary = "초등학교"
    case middel = "중학교"
    case high = "고등학교"
}

struct MyFriend: Identifiable, Hashable {
    var id = UUID()
    var name : String
    var school : School
}

func prepareData() -> [MyFriend] {
    var newList = [MyFriend]()
    
    for i in 0...20 {
        let newFriend = MyFriend(name: "내 친구 \(i)", school: School.allCases.randomElement()!)
        newList.append(newFriend)
    }
    
    return newList
}


struct MyFillteredList: View {
    
    @State private var fillteredValue = School.elementary
    @State private var myFriendsList = [MyFriend]()
    
    init() {
        
        
        _myFriendsList = State(initialValue: prepareData())
    }
    
    var body: some View {
        
        VStack {
            
            Text("선택된 필터 : \(fillteredValue.rawValue)")
            Picker(selection: $fillteredValue, label: Text(""), content: {
                Text("초등학교").tag(School.elementary)
                Text("중학교").tag(School.middel)
                Text("고등학교").tag(School.high)
            })  // Picker
            .pickerStyle(SegmentedPickerStyle())
            
            
            List {
                ForEach(myFriendsList.filter{ filterTerm in
                    filterTerm.school == fillteredValue
                }) {    friendItem in
                    GeometryReader{ geometryProxy in
                        HStack {
                            Text("name : \(friendItem.name)")
                                .frame(width : geometryProxy.size.width / 3)
                            Divider()
                            Text("school : \(friendItem.school.rawValue)")
                                .frame(width : geometryProxy.size.width / 2)
                            
                        }
                    }
                }
            }
            
            
            
//            List {
//
//                ForEach(myFriendsList, id: \.self) { friendItem in
//
//                    GeometryReader{ geometryProxy in
//                        HStack {
//                            Text("name : \(friendItem.name)")
//                                .frame(width : geometryProxy.size.width / 3)
//                            Divider()
//                            Text("school : \(friendItem.school.rawValue)")
//                                .frame(width: geometryProxy.size.width / 2)
//                        }
//                    }
//
//                }
//
//            }   // List
            
        }   // VStack
        
        
        
    }
}


struct MyFillteredList_Previews: PreviewProvider {
    static var previews: some View {
        MyFillteredList()
    }
}
