//
//  RegisterView.swift
//  natuar
//
//  Created by Nilton Torres on 18/04/24.
//

import SwiftUI
import Foundation

struct RegisterView : View {
    
    @State private var email: String = ""
    @State private var password: String = ""

    var body : some View {
        
        GeometryReader{ geometry in
            
            VStack(alignment: .leading){
                Spacer()
                
                Text("Registrarse").font(.system(size: 34))
                Text("Bienvenido a NatuAR").font(.system(size: 17)).foregroundStyle(Color(.gray))
                Spacer().frame(height: 40)
                
                CustomTextField(title: "Email", hintText: "example@gmail.com", bindingValue: $email)
                Spacer().frame(height: 20)
                
                CustomTextField(title: "Password", hintText: "", bindingValue: $email)
                Spacer().frame(height: 20)
                CustomTextField(title: "Repetir Password", hintText: "", bindingValue: $email)
                
                Spacer().frame(height: 40)
                
                CustomButton(title: "Registrarse", backgroundColor: .blue, textColor: .white)
                Spacer().frame(height: 20)
                
                VStack(alignment: .center){
                   
                    
                    Button("Iniciar Sesion") {
                        //TODO: login
                    }
                }.frame(width: geometry.size.width * 0.9)
                
                Spacer().frame(height: 40)
                
                CustomButton(title: "Continuar con Google", backgroundColor: .gray, textColor: .black, iconName: "g.circle")
                Spacer().frame(height: 17)
                
                CustomButton(title: "Continuar con Apple", backgroundColor: .gray, textColor: .black, iconName: "apple.logo")
                
                Spacer().frame(height: 50)
                
            }
            .padding()
            .background(Color("backgroundPlate"))
            .frame(width: .infinity)
            
            
        }
    }
    
}



#Preview {
    RegisterView()
}
