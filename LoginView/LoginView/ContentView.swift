//
//  ContentView.swift
//  LoginView
//
//  Created by Abdulkarim Koshak on 1/18/23.
//

import SwiftUI

struct ContentView: View {
    
    @State private var isValid: Bool = false
    @State private var message: String = ""
    
    @State private var username: String = ""
    @State private var password: String = ""
    
    var body: some View {
        VStack {
            TextField(
                "Username",
                text: $username
            )
            .textFieldStyle(.roundedBorder)
            .padding(.horizontal)
            
            TextField(
                "Password",
                text: $password
            )
            .textFieldStyle(.roundedBorder)
            .padding(.horizontal)
            
            if isValid {
                Text(message)
                    .fontWeight(.light)
                    .foregroundColor(Color.green)
                    .padding()
            } else {
                Text(message)
                    .fontWeight(.light)
                    .foregroundColor(Color.red)
                    .padding()
            }
            
            Button("Login    ") {
                if username == "Abdulkarim" && password == "12345" {
                    isValid = true
                    message = "Successfully logged in"
                } else {
                    isValid = false
                    message = "Incorrect username & password"
                }
            }
            .background(.blue)
            .foregroundColor(Color.white)
            .cornerRadius(10)
            .padding()
            
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
