
import SwiftUI
import Foundation


import Combine

final class ContentViewModel: ObservableObject {
    
    // MARK: - Properties
    
    let placeholder1 = "Email"
    let placeholder2 = "Password"
    @Published
    var hint1 = ""
    @Published
    var hint2 = ""
    @Published
    var text1 = ""
    @Published
    var text2 = ""
    @Published
    var text1Valid = true {
        didSet {
            hint1 = text1Valid
                ? "Hint 1"
                : "Error 1"
        }
    }
    @Published
    var text2Valid = true {
        didSet {
            hint2 = text2Valid
                ? "Hint 2"
                : "Error 2"
        }
    }
    
    // MARK: - Methods
    
    func validateText1() {
        text1Valid.toggle()
    }
    
    func validateText2() {
        text2Valid.toggle()
    }
    
}

struct LoginScreen: View {
    
    @State private var email: String = ""
    @State private var password: String = ""
    @State private var emailBool: Bool = true
    @State
    private var editingTextField1 = false {
        didSet {
            guard editingTextField1 != oldValue else {
                return
            }
            if editingTextField1 {
                editingTextField2 = false
            } else {
                viewModel.validateText1()
            }
        }
    }
    @State
    private var editingTextField2 = false {
        didSet {
            guard editingTextField2 != oldValue else {
                return
            }
            if editingTextField2 {
                editingTextField1 = false
            } else {
                viewModel.validateText2()
            }
        }
    }
    @StateObject
    private var viewModel = ContentViewModel()
    
    var body : some View {
        
        GeometryReader{ geometry in
            
            VStack{
                Image("FrontPage")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: geometry.size.width*1, height: geometry.size.height*0.4)
                VStack(alignment: .leading){

                    Text("Iniciar Sesion").font(.system(size: 24,weight: .bold))
                   
//                    VStack {
                        MaterialDesignTextField($viewModel.text1,
                                                placeholder: viewModel.placeholder1,
                                                hint: $viewModel.hint1,
                                                editing: $editingTextField1,
                                                valid: $viewModel.text1Valid)
                            .onTapGesture { editingTextField1 = true }
                        MaterialDesignTextField($viewModel.text2,
                                                placeholder: viewModel.placeholder2,
                                                hint: $viewModel.hint2,
                                                editing: $editingTextField2,
                                                valid: $viewModel.text2Valid)
                            .onTapGesture { editingTextField2 = true }
//                    }
                        .contentShape(Rectangle())
                        .onTapGesture {
                            editingTextField1 = false
                            editingTextField2 = false
                        }

        
               
                    
                    VStack(alignment: .center,spacing: 20){
                       
                        CustomLoginButton(text: "Ingresar", action:{})
                        Button("Olvidaste tu contraseña?") {
                            //TODO: login
                        }
                        Text("o").foregroundColor(Color(.gray))
                        HStack {
                            Spacer() // Agrega un espacio antes del botón de Google
                              CircularButtonWithLogo(imageName: "google-logo") {
                                  // Acción del botón de Google
                              }

                              CircularButtonWithLogo(imageName: "apple-logo") {
                                  // Acción del botón de Apple
                              }
                              Spacer() // Agrega un espa
                              }
                            
                    }.frame(width: geometry.size.width * 0.9).font(.system(size: 16,weight: .bold)).foregroundColor(Color("PrimaryColor"))
                 
                    
                    Spacer().frame(height: 40)
                
         
                        
                    
                }.padding()

            }.ignoresSafeArea()
            
            
        }
    }
    
}


#Preview {
    LoginScreen()
}



