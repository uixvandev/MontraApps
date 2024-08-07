//
//  Onboarding.swift
//  MateriSesi4StateBinding
//
//  Created by irfan wahendra on 25/01/24.
//

import Foundation

struct Onboarding: Identifiable {
    var id = UUID()
    var image: String
    var title: String
    var subtitle: String
    var tag: Int
}

extension Onboarding {
    static let data: [Onboarding] = [
        Onboarding(
            image: "Illustration1",
            title: "Gain total control \nof your money",
            subtitle: "Become your own money manager \nand make every cent count",
            tag: 0
        ),
        
        Onboarding(
            image: "Illustration2",
            title: "Know where your\nmoney goes",
            subtitle: "Track your transaction easily,\nwith categories and financial report",
            tag: 1
        ),
        
        Onboarding(
            image: "Illustration3",
            title: "Planning ahead",
            subtitle: "Setup your budget for each category\nso you in control",
            tag: 2
        )
    ]
}
