//
//  Onboardingview.swift
//  MateriSesi4StateBinding
//
//  Created by irfan wahendra on 25/01/24.
//

import SwiftUI

struct Onboardingview: View {
    private let tabs: [Onboarding] = Onboarding.data
    @State private var selectedTab = 0
    
    var body: some View {
        NavigationStack {
            VStack {
                TabView(selection: $selectedTab){
                    ForEach(tabs) { tab in
                        Group {
                            OnboardingSingleView(content: tab)
                        }
                        .tag(tab.tag)
                    }
                }
                .animation(.smooth, value: selectedTab)
                .tabViewStyle(PageTabViewStyle())
                .indexViewStyle(PageIndexViewStyle(backgroundDisplayMode: .never))
                
                CustomDotIndicator(count: tabs.count, selectedTab: $selectedTab)
                    .padding([.top, .bottom], 32)
                
                //Button
                VStack(spacing: 16) {
                    NavigationLink(destination: SignUpView()){
                        CustomLongButton(title: "Sign Up", titleColor: .white, bgButtonColor: .violet100)
                    }
                    NavigationLink(destination: SignUpView()){
                        CustomLongButton(title: "Login", titleColor: .violet100, bgButtonColor: .violet50)
                    }
                }
                
            }
        }
    
    }
}

#Preview {
    Onboardingview()
}


