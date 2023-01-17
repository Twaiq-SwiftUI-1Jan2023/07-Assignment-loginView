//
//  ContentView.swift
//  Userloggginapp
//
//  Created by Abdullah Aloufi on 24/06/1444 AH.
//

import SwiftUI



struct ContentView: View {
    
    @State private var name: String = ""
    @State private var pass: String = ""
    @State var text1 = "Loggin Status"
    @State var isOn = true
    @State var color1 = 150
    @State var color2 = 0
//    @State var backColor =
    var body: some View {
        
        VStack {
            
            VStack{
                
                Image("3ds")
                TextField("Username", text: $name)
                    .padding()
                    .background(Color.gray)
                    .cornerRadius(5.0)
                    .padding(.bottom, 20)
                SecureField("Password", text: $pass)
                    .padding()
                    .background(Color.gray)
                    .cornerRadius(5.0)
                    .padding(.bottom, 20)
                Text(text1)
                    .padding()
                    .font(.title)
                    .background(Color.init(CGColor(red: CGFloat(color1), green: CGFloat(color2), blue: 0, alpha: 1)))
                    
                Button("Loggin") {
                    if name == "Abd" && pass == "123"{
                        text1 = "Succesful"
                        color1 = 0
                        color2 = 150
                    }else{
                        text1 = "Wrong username or password"
                        color1 = 150
                        color2 = 0
                    }
                }
                    .font(.headline)
                    .foregroundColor(.white)
                    .padding()
                    .frame(width: 220, height: 60)
                    .background(Color.green)
                    .cornerRadius(15.0)
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

