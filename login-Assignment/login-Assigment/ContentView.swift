//
//  ContentView.swift
//  login-Assigment
//
//  Created by البراء سيت on 24/06/1444 AH.
//

import SwiftUI

struct ContentView: View {
    @State var username = ""
    @State var Password = ""
    @State var backgrounds = Color.white
    
    @State var wrongAuthentication : Bool = false
    @State var RightAuthentication : Bool = false
    var body: some View {
        
        ZStack{
            
            
            
            VStack {
                
                VStack{
                    
                    Text("Login")
                        .font(.largeTitle)
                        .bold()
                        .padding()
                    TextField("Username",text: $username)
                        .padding()
                        .frame(width: 300 , height: 50)
                        .background(Color.black.opacity(0.10))
                        .cornerRadius(25)
                    TextField("Password",text: $Password)
                        .padding()
                        .frame(width: 300 , height: 50)
                        .background(Color.black.opacity(0.10))
                        .cornerRadius(25)
                    
                    if wrongAuthentication{
                        Text("wrong username and pasword ")
                            .foregroundColor(Color.red)
                        
                        
                    }
                    
                    if RightAuthentication {
                        Text("seuccsuful ")
                            .foregroundColor(Color.green)
                    }
                    
                    Button("Login"){
                        
                        if self.username == "Albaraa" && self.Password == "1234"{
                            RightAuthentication = true
                            wrongAuthentication = false
                            backgrounds = Color.green
                            
                        }
                        else{
                            RightAuthentication = false
                            wrongAuthentication = true
                            backgrounds = Color.red
                        }
                        
                    }
                    
                    .foregroundColor(.white)
                    .frame(width: 150 , height: 50)
                    .background(Color.blue)
                    .cornerRadius(30)
                    
                    
                }
                // .background(Color.black)
                
            }
            //.padding()
            //.background(Color.blue)
            
        }
        
        .frame(width: 400 , height: 800)
        .background(backgrounds).foregroundColor(Color.black)
        
    }
    
    //
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
