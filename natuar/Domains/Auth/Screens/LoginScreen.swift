
import SwiftUI
import Foundation




struct LoginScreen: View {
    
    @State private var email: String = ""
    @State private var password: String = ""

    var body : some View {
        
        GeometryReader{ geometry in
            
            VStack{
                Image("FrontPage")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: geometry.size.width*1, height: geometry.size.height*0.3)
                Spacer().frame(height: 40)
                VStack(alignment: .leading){

                    Text("Iniciar Sesion").font(.system(size: 24,weight: .bold))
                    Spacer().frame(height: 40)
                    
                    CustomFieldText(name: $email, label: "Your Email ID")
                    Spacer().frame(height: 20)
                    
                    CustomFieldText(name: $email, label: "Your Email ID")
                    Spacer().frame(height: 20)
                
                    
                    Spacer().frame(height: 40)
               
                    
                    VStack(alignment: .center){
                       
                        
                        Button("Olvide mi contraseña") {
                            //TODO: login
                        }
                    }.frame(width: geometry.size.width * 0.9)
                 
                    
                    Spacer().frame(height: 40)
                    
                    HStack(spacing: 20) {
                              CircularButtonWithLogo(imageName: "google_logo") {
                                  // Acción del botón de Google
                              }
                              
                              CircularButtonWithLogo(imageName: "apple_logo") {
                                  // Acción del botón de Apple
                              }
                          }
                          .padding()
                    Spacer().frame(height: 50)
                }.padding()

            }.ignoresSafeArea()
            
            
        }
    }
    
}



#Preview {
    LoginScreen()
}



