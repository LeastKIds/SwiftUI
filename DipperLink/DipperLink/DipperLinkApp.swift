//
//  DipperLinkApp.swift
//  DipperLink
//
//  Created by 김진홍 on 2021/09/24.
//

import SwiftUI

@main
struct DipperLinkApp: App {
    
    @State var selectedTab = TabIdentifier.todos
    
    var body: some Scene {
//            ContentView()
            
            WindowGroup {
                TabView(selection : $selectedTab,
                        content : {
                            TodosView().tabItem{
                                Image(systemName: "list.bullet")
                                Text("TodoList")
                                
                            }.tag(TabIdentifier.todos)
                            ProvileView().tabItem{
                                Image(systemName: "person.circle.fill")
                                Text("Profile")
                                
                            }.tag(TabIdentifier.profile)
                        })  // TabView
                    .onOpenURL(perform: { url in
                        guard let tabId = url.tabIdentifier else {return}
                        selectedTab = tabId
                    })
                
            }   // WindowGroup
        
    }
}



enum TabIdentifier : Hashable {
    case todos
    case profile
}

enum PageIdentifier: Hashable {
    case todoItem(id : UUID)
}

extension URL {
    var isDeeplink : Bool {
        return scheme == "deeplink-swiftui"
    }
    
    var tabIdentifier : TabIdentifier? {
        guard isDeeplink else { return nil }
        
        switch host {
        case "todos":
            return .todos
        case "profile":
            return .profile
        default:
            return nil
        }
    }
    
    var detailPage: PageIdentifier? {
        
        print("pathComponents: \(pathComponents)")
        
        guard let tabId = tabIdentifier,
              pathComponents.count > 1,
              let uuid = UUID(uuidString: pathComponents[1])
        else { return nil }
        
        switch tabId {
        case .todos:
            return .todoItem(id: uuid)
        default:
            return nil
        }
    }
}

