//
//  ContentView.swift
//  HomeWork-UI
//
//  Created by Judy Alshahrani on 24/06/1444 AH.
//

import SwiftUI

struct ContentView: View {
   @State var UserName :String=""
   @State var Password :String=""
   @State var right = ""
   @State var effect = Color.white
   var body: some View {
      VStack {
         Text("hi ")
            .underline(true,color:Color.red)
          // .foregroundColor(Color.red)
          // .font(.title)
//           .foregroundColor(Color.red)
         Image(systemName: "person")
            .font(.system(size:50))
         TextField("UserName :", text: $UserName)
            .textFieldStyle(RoundedBorderTextFieldStyle())
            .padding()
            .background(Color.yellow.opacity(0.5).cornerRadius(70))
            .foregroundColor(.black)
            .font(.headline)
           
          // .border(Color.black,width: .cornerRadius(70))
            .padding()
         //.shadow(color:Color.black.opacity(0.8), radius: 0.5)
         VStack(){
            
            TextField("Password :", text: $Password)
               .textFieldStyle(RoundedBorderTextFieldStyle())
               .padding()
               .background(Color.yellow.opacity(0.5).cornerRadius(100))
               .foregroundColor(.black)
               .font(.headline)
               .padding()
              // .shadow(color:Color.black.opacity(0.6), radius: 10)
           Text("\(right)")
            Button("Button"){
            
               if UserName=="Wejdan" && Password == "1234"{
                  effect=Color.green
                  right="You are successfully log in"
               }else{
                  effect=Color.red
                  right="The username and password are Incorrect"
               }
                 
            }
            .padding()
            .background(Color.yellow.opacity(0.5).cornerRadius(70))
            .foregroundColor(.black)
            .font(.headline)
           // .buttonStyle(.borderedProminent)
       
         }
      }.frame(maxWidth:.infinity ,maxHeight: .infinity).background(effect)
   }
   
   
   struct ContentView_Previews: PreviewProvider {
      static var previews: some View {
         ContentView()
      }
   }
   /**
    VStack {
    Image(systemName: "globe")
    .imageScale(.large)
    .foregroundColor(.accentColor)
    Text("Hello, world!")
    }
    .padding()
    */
}
