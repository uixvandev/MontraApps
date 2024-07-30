//
//  SignUpView.swift
//  Montra App
//
//  Created by irfan wahendra on 30/01/24.
//

import SwiftUI

struct SignUpView: View {
    @State private var name = ""
    @State private var email = ""
    @State private var password = ""
    @State private var isSecured: Bool = false
    @State private var isCheckPolicy: Bool = false
    @State private var showingAlert: Bool = false
    
    var userData: UserData{
        let user = UserData(name: name, email: email, password: password)
        return user
    }
    
    var body: some View {
        NavigationStack {
            VStack(spacing:16){
                //name
                TextField("Name", text: $name)
                    .padding()
                    .frame(width: 343, height: 56, alignment: .leading)
                    .cornerRadius(16)
                    .overlay(
                        RoundedRectangle(cornerRadius: 16)
                            .stroke(.light60, lineWidth: 1))
                
                //email
                TextField("Email", text: $email)
                    .padding()
                    .frame(width: 343, height: 56, alignment: .leading)
                    .cornerRadius(16)
                    .overlay(
                        RoundedRectangle(cornerRadius: 16)
                            .stroke(.light60, lineWidth: 1))
                //pasword
                ZStack(alignment: .trailing) {
                    RoundedRectangle(cornerRadius: 16)
                        .stroke(.light60, lineWidth: 1)
                        .frame(width: 343, height: 56)
                    Group{
                        if isSecured {
                            TextField("Password", text: $password)
                            
                        } else {
                            SecureField("Password", text: $password)
                        }
                    }
                    .autocorrectionDisabled(true)
                    .textInputAutocapitalization(.never)
                    .padding(.horizontal)
                    .frame(width: 343, height: 56)
                    
                    ///
                    Button {
                        isSecured.toggle()
                    } label: {
                        Image(isSecured ? "Hide" : "Show")
                    }
                    .padding(.trailing, 16)
                    .frame(width: 343, height: 56, alignment: .trailing)
                }
                
                //check policy
                HStack(spacing: 10){
                    //square check mark
                    Image(systemName: isCheckPolicy ? "checkmark.square.fill" : "square" )
                        .onTapGesture {
                            isCheckPolicy.toggle()
                        }
                        .foregroundStyle(isCheckPolicy ? .violet100 : .violet100)
                        .font(.largeTitle)
                    
                    //text
                    Text("By signing up, you agree to the **[Terms of Service](https://iswift.mayar.link)** and **[Privacy Policy](https://google.com)**.")
                        .font(.custom("Inter", size: 16))
                        .fontWeight(.medium)
                }
                .padding(.horizontal, 20)
                
                //button signup
                NavigationLink(destination: HomeView(userData: userData)) {
                    CustomLongButton(title: "Sign Up", titleColor: .white, bgButtonColor: .violet100)
                       
                }
                .disabled(name.isEmpty || password.isEmpty || password.isEmpty || isCheckPolicy == false)
                
                Text("Or with")
                    .font(.custom("Inter", size: 18))
                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                    .foregroundStyle(.light20)
                    .padding(.vertical)
                
                //google button
                HStack(alignment: .center, spacing: 10){
                    Image("google")
                    Text("Sign Up with Google")
                        .font(.custom("Inter", size: 18))
                        .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                        .foregroundStyle(.dark50)
                }
                .background{
                    RoundedRectangle(cornerRadius: 16)
                        .stroke(.light60, lineWidth: 1)
                        .frame(width: 343, height: 56)
                }
                //Text already have an account
                HStack {
                    Text("Already have an account?")
                        .font(.custom("Inter", size: 18))
                        .fontWeight(.medium)
                        .foregroundStyle(.light20)
                    NavigationLink(destination: LoginView()) {
                        Text("Login")
                            .font(.custom("Inter", size: 18))
                            .fontWeight(.bold)
                            .foregroundStyle(.violet100)
                    }
                    .padding(.vertical, 20)
                }
                
            }
            .navigationTitle("Sign Up")
            .navigationBarTitleDisplayMode(.inline)
        }
        
    }
}

#Preview {
    SignUpView()
}

struct UserData {
    var name : String
    var email : String
    var password : String
}
                               
