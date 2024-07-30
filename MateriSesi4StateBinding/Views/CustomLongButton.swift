//
//  CustomLongButton.swift
//  MateriSesi4StateBinding
//
//  Created by irfan wahendra on 25/01/24.
//

import SwiftUI

struct CustomLongButton: View {
    let title: String
    let titleColor: Color
    let bgButtonColor: Color
    
    
    var body: some View {
            Text(title)
                .font(.custom("Inter", size: 18))
                .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                .foregroundStyle(titleColor)
                .padding()
                .frame(width: 343, height: 56)
                .background{
                    RoundedRectangle(cornerRadius: 16)
                        .foregroundStyle(bgButtonColor)
                }
        }
}

#Preview {
    CustomLongButton(title: "Sign Up", titleColor: Color .white, bgButtonColor: Color.violet100)
}
