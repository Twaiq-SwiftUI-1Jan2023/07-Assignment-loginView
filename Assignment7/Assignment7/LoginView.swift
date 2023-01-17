//
//  LoginView.swift
//  Assignment7
//
//  Created by Batool on 17/1/2023.
//

import SwiftUI

struct LoginView: View {
    @State var username: String = ""
    @State var password: String = ""
    @State var isValid  = ""
    @State var wallpaper = Color.white
    var body: some View {
        VStack {
            
            HStack(alignment: .center) {
                Text("Username:")
                    .bold()
                TextField("Enter username", text: $username)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                
            }.padding()
            
            HStack(alignment: .center) {
                Text("Password:")
                    .bold()
                TextField("Enter password", text: $password)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                
            }.padding()
            
            Text("\(isValid)")
            
            VStack {
                
                Button ("Login") {
                    if username == "Batool" && password == "Admin" {
                        isValid = ("Welcome \(username)!")
                        wallpaper = Color.green
                    } else {
                        isValid = ("Username or Password is invalid")
                        wallpaper = Color.red
                    }
                }.padding(10).background(Color.cyan).cornerRadius(10).foregroundColor(Color.white).bold()
            }
        }.frame(maxWidth:.infinity, maxHeight:.infinity).background(wallpaper)
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
