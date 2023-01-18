//
//  ContentView.swift
//  ass7
//
//  Created by MAJEDAH on 24/06/1444 AH.
//

import SwiftUI

struct ContentView: View {
    @State var userName = ""
    @State var pass = ""
    @State var truoORfalse = ""
    @State var clolrReturn = Color.green
    
    var body: some View {
        VStack {Label("أسم المستخدم", systemImage: ":")
                .padding(.bottom ,30)
                .padding(.leading , 230)
            TextField("أدخل اسم المستخدم", text: $userName)
           
                .padding(.leading , 220)
            Label("كلمة المرور", systemImage: ":")
                .padding(.leading , 230)
                .padding(.top , 50)
                
            TextField("أدخل كلمة السر ", text: $pass)
           
                .padding(.leading , 250)
                .padding(.top , 10)
                .padding(.top )
            Text( " \(truoORfalse)")
            Button("تسجيل الدخول ") {
                if userName == "M" && pass == "Mm" {
                    clolrReturn = Color.green
                    truoORfalse = "ياهلا والله 😍"
                }
                else {
                    clolrReturn = Color.red
                    truoORfalse = "خطأ في تسجيل الدخول "
                }
            }
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
