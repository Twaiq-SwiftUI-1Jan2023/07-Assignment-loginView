
import SwiftUI

struct LogUIView: View {
    @State var username = ""
    @State var password = ""
    @State var text = ""
    @State var text2 = ""
    
   
    
    
    var body: some View {
        VStack{
            
            Color.blue
                .ignoresSafeArea()
            Image("swift1")
            
            
            VStack{
                
                Text("Log in")
                    .foregroundColor(Color.blue)
                    .padding(50)
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                Text("Entar Your UserName:")
                    .padding(.trailing,65)
                    .font(.title2)
                    .fontWeight(.heavy)
                TextField("UserName:", text: $username)
                    .padding()
                                           .frame(width: 300, height: 50)
                                           .background(Color.black.opacity(0.05))
                                           .cornerRadius(10)
                                           
                                           
                
                Text("Entar Your Password:")                    .padding(.trailing,65)
                    .font(.title2)
                    .fontWeight(.heavy)
                TextField("Password:", text: $password)
                    .padding()
                   .frame(width: 300, height: 50)
                  .background(Color.black.opacity(0.05))
                   .cornerRadius(10)
               
                
               
                   .padding(9)
                    Button("Log In") {
                        if username == "Fatma" && password == "2023"{
                           
                            text = "تم تسجيل الدخول بنجاح"
                        
                            
                        }else{
                           text2 = "آعد المحاولة"
                                    }
                        
                                    
                    }
                    
                    .foregroundColor(.white)
                      .frame(width: 300, height: 50)
                     .background(Color.blue)
                      .cornerRadius(10)
                Text("\(text)")
                    .foregroundColor(.green)
                    .font(.title2)
                    .fontWeight(.bold)
                Text("\(text2)")
                    .foregroundColor(.red)
                    .font(.title2)
                    .fontWeight(.bold)
                }
                }
            
            }
        }

                                    


struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LogUIView()
    }
}
