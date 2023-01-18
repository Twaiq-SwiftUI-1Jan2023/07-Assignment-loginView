//
//  ContentView.swift
//  assaimt 7
//
//  Created by Abudulaziz on 25/06/1444 AH.
//

import SwiftUI
struct ContentView: View {
    @State var emill = ""
    @State var pass = ""
    @State var x = ""
    var body: some View {
        VStack {
            HStack{
                TextField("emil", text: $emill )
            }.frame(height: 60)
                .padding(.horizontal, 20)
                .background(Color.yellow)
                .cornerRadius(8)
                .padding(.horizontal, 20)
            HStack{
                TextField("passord", text: $pass )
            }.frame(height: 60)
                .padding(.horizontal, 20)
                .background(Color.yellow)
                .cornerRadius(8)
                .padding(.horizontal, 20)
            Text("\(x)")
            Button(/*@START_MENU_TOKEN@*/"Button"/*@END_MENU_TOKEN@*/) {
                if emill == "AA" , pass == "AA"{
                             x = "تم تسجيل الدخول"
                                   
                                
                            } else {
                                x = "لم يتم تسجيل الدخول"
                            }
            }
            
                
            }
        }
        
        struct ContentView_Previews: PreviewProvider {
            static var previews: some View {
                ContentView()
            }
        }
        
    }

