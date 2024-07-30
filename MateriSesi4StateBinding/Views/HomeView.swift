//
//  HomeView.swift
//  Montra App
//
//  Created by irfan wahendra on 31/01/24.
//

import SwiftUI

struct HomeView: View {
    var userData: UserData
    init(userData: UserData) {
        self.userData = userData
    }

    var body: some View {
        VStack{
            Text("Welcome, \(userData.name)")
            Text("Your email: \(userData.email)")
            Text("Your Password: \(userData.password)")
        }
    }
}


#Preview {
    HomeView(userData: UserData.init(name: "Irfan", email: "Irfan", password: "irfan"))
}
