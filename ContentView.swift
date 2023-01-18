//
//  ContentView.swift
//  AssignmentSara
//
//  Created by Sara Alahmdi on 24/06/1444 AH.
//

import SwiftUI

struct ContentView: View {
    @State private var UserName = ""
    @State private var password = ""
    @State private var wrongUserName = 0
    @State private var wrongPassword = 0
    @State private var logInScreen = false
    
    var body: some View {
        NavigationView {
            ZStack {
                Color.yellow
                    .ignoresSafeArea()
                Circle()
                    .scale(1.7)
                    .foregroundColor(.white.opacity(0.1))
                Circle()
                    .scale(1.35)
                    .foregroundColor(.white)
                VStack {
                    Text("Welcome back!")
                        .font(.largeTitle)
                        .bold()
                        .padding()
                    TextField("UserName", text: $UserName)
                        .padding()
                        .frame(width: 300, height: 50)
                        .background(Color.black.opacity(0.05))
                        .cornerRadius(10)
                    
                    SecureField("Password", text: $password)
                        .padding()
                        .frame(width: 300, height: 50)
                        .background(Color.black.opacity(0.05))
                        .cornerRadius(10)
                        .border(.red, width: CGFloat(wrongPassword))
                    Button("Login") {
                    }
                    .foregroundColor(.white)
                    .frame(width: 300, height: 50)
                    .background(Color.blue)
                    .cornerRadius(10)
                    .border(.red, width: CGFloat(wrongPassword))
                    Button("Login") {
                        autheticateUser (UserName: UserName, password: password)
                        
                            .foregroundColor(.white)
                            .frame(width: 300, height: 50)
                            .background(Color.blue)
                            .cornerRadius(10)
                        
                        NavigationLink(desstination: Text,
                                       ("You are logged in @\(UserName)"), isActive: $logInScreen) {
                            EmptyView()
                        }
                    }
                    
                    .navigationBarHidden(true)
                }
            }
        }
        func autheticateUser (UserName: String, password: String) {
            
            if UserName.lowercased() == "sara123" {
                wrongUserName = 0
            }
            if password.lowercased() == "ali123" {
                wrongPassword = 0
                logInScreen = true
            } else {
                wrongPassword = 2
                
                wrongUserName = 2
                
            }
        }
    }
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
}

