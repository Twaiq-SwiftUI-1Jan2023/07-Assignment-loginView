//
//  LoginView.swift
//  LoginView
//
//  Created by Amer Alyusuf on 17/01/2023.
//

import SwiftUI

struct LoginView: View {
    
    @State private var successful: Bool = false
    @State private var username: String = ""
    @State private var password: String = ""
    @State private var showAlert: Bool = false
    
    var body: some View {
        ZStack {
            LinearGradient(colors: successful ? [Colors.captainsBlue, Colors.dark] : [Colors.denim, Colors.captainsBlue], startPoint: .top, endPoint: .bottom)
                .ignoresSafeArea(.all, edges: [.top, .bottom])
            
            VStack(spacing: 10) {
                // MARK: - Title
                HStack {
                    Text("Login Page")
                        .foregroundColor(Colors.prosecco)
                        .font(.largeTitle)
                        .bold()
                }
                
                Spacer()
                
                // MARK: - Image
                Image(successful ? "success" : "question")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .padding()
                  
                // MARK: - Text Fields
                VStack (spacing: 20){
                    if !successful {
                        TextField("Enter username", text: $username)
                            .foregroundColor(Colors.prosecco)
                            .textInputAutocapitalization(.never)
                            .disableAutocorrection(true)
                            .padding(20)
                            .overlay {
                                RoundedRectangle(cornerRadius: 10, style: .continuous)
                                    .stroke(Colors.community, lineWidth: 3)
                            }
                            .padding(.horizontal)
                        
                        SecureField("Enter Password", text: $password)
                            .foregroundColor(Colors.prosecco)
                            .textInputAutocapitalization(.never)
                            .disableAutocorrection(true)
                            .padding(20)
                            .overlay {
                                RoundedRectangle(cornerRadius: 10, style: .continuous)
                                    .stroke(Colors.community, lineWidth: 3)
                            }
                            .padding(.horizontal)
                            
                    }
                    HStack {
                        Text(successful ? "\(username) Successfuly Logged In!": "Awaiting user input...")
                            .foregroundColor(successful ? Colors.green : Colors.prosecco)
                            .font(.title3)
                        Spacer()
                    }
                    .padding(.leading)
                }
                      
                Button {
                    if !successful && username.isEmpty || password.isEmpty {
                        showAlert = true
                    } else {
                        if successful {
                            username = ""
                            password = ""
                        }
                        successful.toggle()
                    }
                    hideKeyboard()
                } label: {
                    Label(successful ? "Reload" : "Submit", systemImage: successful ? "arrow.left.circle" : "arrow.right.circle")
                        .foregroundColor(Color.white)
                        .font(.title)
                }
                .buttonStyle(.borderedProminent)
                .alert("Cannot Submit with a blank field!", isPresented: $showAlert) {
                    Button("OK", role: .cancel) { }
                }
            }
            .padding()
        }
        .onTapGesture { hideKeyboard() }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
