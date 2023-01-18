//
//  ContentView.swift
//  Project 2
//
//  Created by RMP on 25/06/1444 AH.
//

import SwiftUI

struct ContentView: View {
    
    
    @State var username = ""
    @State var password = ""
    @State var loginSuccess: Bool = false
    @State var faildSuccess = false
    
    var body: some View {
        VStack {
            
            TextField("Username", text: $username)
                .padding()
                .background(Color.gray).opacity(0.23)
                .cornerRadius(5.0)
                .padding(.bottom, 20)
            SecureField("Password", text: $password)
                .padding()
                .background(Color.gray).opacity(0.23)
                .cornerRadius(5.0)
                .padding(.bottom, 20)
            
            
            if loginSuccess {
                
                Text("Login Successfully").padding(45)
                
            } else if faildSuccess == true {
                
                Text("Something wrong, please try again").foregroundColor(.red).font(.system(.headline, weight: .semibold)).padding(45)
                
            }
            
            Button("Login") {
                
                detectLogin()
                
            }
            
            
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


extension ContentView {
    
    func detectLogin() {
        
        if username == "Malcolm" && password == "asd@123" {
            
            loginSuccess = true
            
        } else {
            
            faildSuccess = true
            
        }
        
    }
    
}
