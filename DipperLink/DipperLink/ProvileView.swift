//
//  ProvileView.swift
//  DipperLink
//
//  Created by 김진홍 on 2021/09/24.
//

//import Foundation
import SwiftUI

struct ProvileView: View {
    
    var body: some View{
        Rectangle()
            .foregroundColor(Color.init(#colorLiteral(red: 1, green: 0.6763008024, blue: 0.8847150936, alpha: 1)))
            .frame(width: 100, height: 100)
            .cornerRadius(15)
            .overlay(
                Text("Profile")
                    .font(.system(size : 23))
                    .fontWeight(.black)
                    .foregroundColor(Color.white)
            )
    }
}


struct ProvileView_Previews: PreviewProvider {
    static var previews: some View {
        ProvileView()
    }
}
