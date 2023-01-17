//
//  loginView.swift
//  loginAssignment
//
//  Created by Moha Bahusayn on 17/01/2023.
//

import SwiftUI

struct loginView: View {
    @State var username : String = "" //admin
    @State var password : String = "" //Pa$$w0rd
    @State var validationMessage : String = "Enter your credentials"
    @State var isValid : Bool = false
    var validMessage = "Successful Login =)"
    var invalidMessage = "Invalid username and/or password"
    @State var colorSign : Color = Color.accentColor
    var body: some View {
        ZStack{
            Image("flare")
                .resizable()
                .ignoresSafeArea(.all)
            colorSign //color changing based on user input
                .opacity(0.4)
                .ignoresSafeArea(.all)
            VStack(spacing: 20.0){ //User Actions Area
                VStack(spacing: 20){ //username and password
                    HStack{
                        Text("Username")
                            .frame(width:100,alignment: .leading)
                            .font(.title3)
                        TextField(text: $username, prompt: Text("use 'admin'")){
                            Text("Username")
                        }
                        .padding(3)
                        .background(
                            Rectangle()
                                .fill(.white)
                                .cornerRadius(10)
                                .opacity(0.4))
                    }
                    HStack{
                        Text("Password")
                            .frame(width:100,alignment: .leading)
                            .font(.title3)
                        SecureField(text: $password, prompt: Text("use 'Pa$$w0rd' ")) {
                            Text("Password")
                        }
                        .padding(3)
                        .background(
                            Rectangle()
                                .fill(.white)
                                .cornerRadius(10)
                                .opacity(0.4))
                    }
                }
                .padding([.top,.leading,.trailing])
                .fontWeight(.semibold)
                
                VStack{ //message
                    Text(validationMessage)
                        .padding(5)
                        .foregroundColor(Color.white)
                        .font(.title3)
                        .fontWeight(.light)
                        .opacity(0.8)
                }
                .background(
                    RoundedRectangle(cornerRadius: 10)
                        .foregroundColor(colorSign)
                        .opacity(0.6))
                .padding([.bottom],20)
                VStack{ //Login Button
                    Button {
                        validationMessage = (username.localizedLowercase != "admin" || password != "Pa$$w0rd") ? invalidMessage : validMessage
                        colorSign = validationMessage == validMessage ? Color.green : Color.red
                    } label: {
                        Text("Login")
                            .padding()
                    }
                    .font(.title2)
                    .fontWeight(.bold)
                    .foregroundColor(Color.white .opacity(0.8))
                    .background(Color.blue .opacity(0.77))
                    .cornerRadius(15)
                    .padding(.bottom)
                }
            }
            .background(Color(UIColor.secondarySystemBackground) .opacity(0.3) .cornerRadius(15))
            .shadow(radius: 10)
            .padding()
        }
    }
}

struct loginView_Previews: PreviewProvider {
    static var previews: some View {
        loginView()
    }
}
