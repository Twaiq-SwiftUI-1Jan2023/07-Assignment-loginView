//
//  ContentView.swift
//  07-Assignment
//
//  Created by Raneem AlRashoud on 25/06/1444 AH.
//

import SwiftUI

struct SignInView: View {
    @State var userName : String = ""
    @State var password : String = ""
    @State var showMsg : String = ""
    @State var backgroundColor : Color = Color.white
    
    var body: some View {
        VStack(alignment: .center) {
            
            Text("مرحبا بك مجددًا")
                 .foregroundColor(.black)
                 .font(.title)
                 .padding(.bottom, 30)
            
            VStack{
                HStack{
                    Text("تسجيل دخول")
                        .foregroundColor(.black)
                        .font(.title2)
                       // .fontWeight(.bold)
                }
                
                
                /* EMAIL FIELD*/
                VStack{
                    HStack  {
                        TextField("حساب المستخدم", text: self.$userName
                        )
                            .disableAutocorrection(true)
                            .autocapitalization(.none).multilineTextAlignment(TextAlignment.trailing)


                        Image(systemName: "envelope.fill")
                            .foregroundColor(Color.gray.opacity(0.3))
                        
                    }
                    Divider().background(Color.blue.opacity(0.3).opacity(0.5))
                        .padding(.bottom, 30)
                    
                    
    
                    
                    HStack  {     SecureField("الرقم السري", text: $password).multilineTextAlignment(TextAlignment.trailing)
                    
                    
                    Image(systemName: "eye.slash")
                        .foregroundColor(Color.gray.opacity(0.3))
                    }
                    
                    Divider().background(Color.blue.opacity(0.3).opacity(0.5))
                        .padding(.bottom, 30)
                }
                
                .padding(.horizontal)
                .padding(.top,20)
            

    
        
            }// the big one

            .padding()
            .padding(.bottom, 5)
            .background(Color.gray.opacity(0.3))
            .cornerRadius(15)
            .padding(.horizontal,20)
            
            Text("\(showMsg)")
            
            //Sign In Button
            
            Button("دخول"){
   
   
                    if userName == "Raneem" && password == "R$neem7%7"{
                        backgroundColor = Color.green
                        showMsg = "أهلًا بك رنيم !"
                        
                    } else {
                        backgroundColor = Color.red
                        showMsg = "معلومات الدخول غير صحيحة ، حاول مرة أخرى"
     
                    }
                
                
    
            }
            .frame(width: 150, height: 50)
            .foregroundColor(Color.white)
            .background(Color.blue.opacity(0.6))
            .clipShape(Capsule())
            .shadow(color: Color.gray.opacity(0.1), radius:5 , x: 0, y: 5)
            .offset(y:25)

        }.frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(backgroundColor)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        SignInView()
    }
}
