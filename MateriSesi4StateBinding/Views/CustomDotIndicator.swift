//
//  CustomDotIndicator.swift
//  MateriSesi4StateBinding
//
//  Created by irfan wahendra on 25/01/24.
//

import SwiftUI

struct CustomDotIndicator: View {
    let count: Int
    @Binding var selectedTab: Int
    
    var body: some View {
        HStack{
            ForEach(0..<count, id: \.self) { tab in
            Circle()
                    .fill(tab == selectedTab ? Color(.violet100) : Color(.violet50))
                    .scaleEffect(tab == selectedTab ? 2.0 : 1.0)
                    .frame(width: 8, height: 8)
                    .padding(.horizontal, 4)
                    .onTapGesture {
                        selectedTab = tab
                    }
            }
        }
        .animation(.easeOut, value: selectedTab)
    }
}

#Preview {
    @Previewable @State var selectedTab = 0
    return CustomDotIndicator(count: 3, selectedTab: $selectedTab)
}
