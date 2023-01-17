import SwiftUI

struct LoginView: View {
    @State var username = ""
    @State var password = ""
    @State var backg = Color.white
    @State var valid  = ""
    var body: some View {
        
        VStack {
            VStack {
                Text("UserName : ").padding(.leading,-180)
                TextField("  Enter UserName", text: $username).frame(width: 360,height: 40).cornerRadius(10).border(Color.black)
              
                Text("Password : ").padding(.leading,-180)
                TextField("  Enter Password", text: $password).frame(width: 360,height: 40).cornerRadius(10).border(Color.black).padding(.bottom,80)
                Text("\(valid)")
                Button("Signin"){
                    if username == "Admin" && password == "Admin"{
                        backg = Color.green
                        valid = "Welcome Abdullah"
                        
                    }else{
                        backg = Color.red
                        valid = "Try again"
     
                    }
                }.padding(15).background(Color.blue).foregroundColor(Color.white).font(.title2).cornerRadius(10)
                
                
            }.padding(20)
            
        }.font(.title3).frame(maxWidth: .infinity, maxHeight: .infinity).background(backg).foregroundColor(Color.black)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
