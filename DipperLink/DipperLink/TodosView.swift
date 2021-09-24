//
//  TodosView.swift
//  DipperLink
//
//  Created by 김진홍 on 2021/09/24.
//

//import Foundation
import SwiftUI

struct TodoItem : Identifiable, Hashable{
    var id : UUID
    var title : String
}

func prepareData() -> [TodoItem] {
    print("prepareData() called")
    
    var newList = [TodoItem]()
    
    for i in 0...20 {
        let newTodo = TodoItem(id: UUID(), title: "내할일 \(i)")
        print("newTodo.id : \(newTodo.id) / title : \(newTodo.title)")
        newList.append(newTodo)
    }
    
    return newList
}


struct TodosView : View {
    
    @State var todoItems = [TodoItem]()
    @State var activeUUID: UUID?
    
    init() {
        _todoItems = State(initialValue: prepareData())
    }
    
    var body: some View {
        NavigationView {
            
            List(todoItems) { todoItem in
                
                NavigationLink(
                    destination: Text("\(todoItem.title)"),
                    tag: todoItem.id,
                    selection: $activeUUID,
                    label: {
                        Text("\(todoItem.title)")
                    })  // NavigationLink
                
//                NavigationLink(
//                    destination: Text("\(todoItem.title)"),
//                    label: {
//                        Text("\(todoItem.title)")
//                    }
//                )   // NavigationLink
                
            }   // List
            .navigationTitle(Text("할 일 목록"))
            .onOpenURL(perform: { url in
                if case .todoItem(let id) = url.detailPage {
                    print("넘어온 id : \(id)")
                    self.activeUUID = id
                }
            })
            
        }   // NavigationView
    }
}


struct TodosView_Previews: PreviewProvider {
    static var previews: some View {
        TodosView()
    }
}
