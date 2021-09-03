//
//  Profile.swift
//  Layout_Practice1
//
//  Created by 김진홍 on 2021/09/03.
//

import SwiftUI

struct Profile: View {
    
    
    @Binding var isNavigationBarHidden : Bool
    
    init(isNavigationBarHidden: Binding<Bool> = .constant(false)) {
        
        _isNavigationBarHidden = isNavigationBarHidden
    }
    
    
    
    var body: some View {
        
        
            ScrollView {
    
                VStack {
                    CircleImageView()
                    
                    Spacer()
                        .frame(height:30)
                    
                    Text("LeastKIDS")
                        .font(.system(size : 30))
                        .fontWeight(.black)
                        .padding(.bottom,10)
                    
                    Text("afasdfasdadfafadasdfadafasdasf")
                        .font(.system(size : 25))
                        .fontWeight(.bold)
                    
                    HStack {
                        NavigationLink(
                            destination: MyWebView(url: "www.naver.com/")) {
                            Text("네이버")
                                .font(.system(size : 30))
                                .padding()
                                .background(Color.red)
                                .foregroundColor(Color.white)
                                .cornerRadius(20)
                        }
                        
                        NavigationLink(
                            destination: MyWebView(url: "https://www.daum.net")) {
                            Text("다음")
                                .font(.system(size : 30))
                                .padding()
                                .background(Color.blue)
                                .foregroundColor(Color.white)
                                .cornerRadius(20)
                                .padding(.leading,20)
                        }
                        
                    }   // HStack
                    .padding(20)
                    
                    Spacer()

                }   // VStack
                
        }   // ScrollView
            .navigationBarTitle("My Profile")
            .navigationBarItems(trailing:
                NavigationLink(destination :
                                Text("setting")
                                .font(.largeTitle)
                                .fontWeight(.black)
                ) {
                    Image(systemName: "gear")
                        .font(.largeTitle)
                        .foregroundColor(Color.black)
                }
            )
            .onAppear{
                self.isNavigationBarHidden = false
            }
            
        
        
    }
}

struct Profile_Previews: PreviewProvider {
    static var previews: some View {
        Profile()
    }
}
