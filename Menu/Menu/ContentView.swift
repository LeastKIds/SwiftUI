//
//  ContentView.swift
//  Menu
//
//  Created by 김진홍 on 2021/10/01.
//

import SwiftUI

let myPets = ["멍멍이🐶", "야옹이🐱", "찍찍이🐹"]

struct ContentView: View {
    
    @State private var shouldShowAlert : Bool = false
    @State private var myText : String = ""
    @State private var selected : Int = 0
    
    var body: some View {
        
        NavigationView {
            
            VStack (spacing: 20){
                
                Spacer()
                Text("\(myPets[selected])")
                    .font(.system(size: 60))
                    .bold()
                
                Text("우측 상단에 땡땡땡을 눌러주세요!")
                    .font(.title2)
                    .fontWeight(.black)
                Spacer()
                Spacer()
                
            }   // VStack
                .padding()
                .navigationTitle("하이요")
                .toolbar(content: {
                    ToolbarItem(placement: .navigationBarTrailing,  // .primaryAction : 오른 쪽 위, .navigationBarLeading : 왼 쪽 위
                                content: {
                                    
                                    // 접히는 부분
                                    Menu{
                                        // 접힌 부분의 내용물
                                        
                                        
                                        Button(action: {
                                            // 액션, 동작
                                            print("오늘도 버튼 클릭!")
                                            shouldShowAlert = true
                                            myText = "오늘도"
                                            
                                        }, label: {
                                            // 보이는 부분
                                            Label("오늘도", systemImage: "flame.fill")
                                        })
                                        
                                        // 멀티 트레일링 클로저
                                        Button {
                                            print("쉬는날 버튼 클릭!")
                                            print("shouldShowAlert" , shouldShowAlert)
                                            shouldShowAlert = true
                                            myText = "쉬는날"
                                        } label : {
                                            Label("쉬는날",systemImage: "house.fill")
                                        }
                                        
                                        
                                        // Section : 메뉴에서 구분 선
                                        Section{
                                            // 멀티 트레일링 클로저
                                            Button {
                                                
                                            } label : {
                                                Label("새 파일 만들기",systemImage: "doc")
                                            }
                                            
                                            Button {
                                                
                                            } label : {
                                                Label("새 폴더 만들기",systemImage: "folder")
                                            }
                                        }   // Section
                                        
                                        Section{
                                            // 멀티 트레일링 클로저
                                            Button {
                                                
                                            } label : {
                                                Label("파일 삭제",systemImage: "trash")
                                            }
                                            
                                        }
                                        
                                        
                                        Picker(selection: $selected, label: Text("애완동물 선택")){
                                            ForEach(myPets.indices, id: \.self, content: { index in
                                                Text("\(myPets[index])").tag(index)
                                            })
                                        }   // Picker
                                        
                                       
                                        
                                    
                                        
                                        
                                        
                                    } label: {
                                        // 펼치기 버튼 부분
                                        
                                        Circle().foregroundColor(Color.init(#colorLiteral(red: 0.9254902005, green: 0.2352941185, blue: 0.1019607857, alpha: 1)))
                                            .frame(width:50, height:50)
                                            .overlay(
                                                Label("더 보기", systemImage: "ellipsis")
                                                    .font(.system(size: 30))
                                                    .foregroundColor(Color.white)
                                            )
                                        
                                    }   // Menu
                                    
                                    
                                })  // TollbarItem
                    
                })  // toolbar
                .alert(isPresented : $shouldShowAlert, content : {
                    Alert(title: Text("알림"), message: Text("\(myText)"), dismissButton: .default(Text("확인")))
                })
            
        }   // NavigationView
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
