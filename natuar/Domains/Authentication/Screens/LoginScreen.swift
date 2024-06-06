
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
    var text1Valid = true
    @Published
    var text2Valid = true
    
    // MARK: - Methods
    
    func validateText1() {
        // TODO
    }
    
    func validateText2() {
        // TODO
    }
    
}

struct LoginScreen: View {
    @State private var email: String = ""
    @State private var password: String = ""
    
    @State
    private var editingTextField1 = false {
        didSet {
            guard editingTextField1 != oldValue else {
                return
            }
            if editingTextField1 {
                editingTextField2 = false
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
            }
        }
    }
    
    @StateObject
    private var viewModel = ContentViewModel()
    
    @StateObject private var loginViewModel = LoginViewModel()
    
    var loginAction: () -> Void
    
    @State var hasLoginError: Bool = false
    @State var isLoading: Bool = false
    
    var body : some View {
        GeometryReader{ geometry in
            VStack{
                Image("FrontPage")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: geometry.size.width*1, height: geometry.size.height*0.4)
                
                VStack(alignment: .leading){
                    
                    Text("Iniciar Sesión").font(.system(size: 24,weight: .bold))
                    
                    //                    VStack {
                    MaterialDesignTextField($viewModel.text1,
                                            placeholder: viewModel.placeholder1,
                                            hint: $viewModel.hint1,
                                            editing: $editingTextField1,
                                            valid: $viewModel.text1Valid,
                                            autocapitalization: .never)
                    .onTapGesture {
                        editingTextField1 = true
                    }
                    
                    MaterialDesignTextField($viewModel.text2,
                                            placeholder: viewModel.placeholder2,
                                            hint: $viewModel.hint2,
                                            editing: $editingTextField2,
                                            valid: $viewModel.text2Valid,
                                            autocapitalization: .never,
                                            isPassword: true)
                    .onTapGesture {
                        editingTextField2 = true
                    }
                    //                    }
                    //                    .contentShape(Rectangle())
                    //                    .onTapGesture {
                    //                        editingTextField1 = false
                    //                        editingTextField2 = false
                    //                    }
                    
                    VStack(alignment: .center, spacing: 20){
                        CustomLoginButton(text: "Ingresar", action: {
                            isLoading = true
                            loginViewModel.login(email: viewModel.text1, password: viewModel.text2) { success in
                                if success {
                                    loginAction()
                                } else {
                                    print("Login failed")
                                    hasLoginError = true
                                }
                                isLoading = false
                            }
                        }, isLoading: $isLoading)
                        
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
                            
                            Spacer() // Agrega un espacio
                        }
                    }.frame(width: geometry.size.width * 0.9).font(.system(size: 16, weight: .bold)).foregroundColor(Color("PrimaryColor"))
                    
                    
                    Spacer().frame(height: 40)
                }.padding()
            }
            .ignoresSafeArea()
            .alert("Error al iniciar sesión", isPresented: $hasLoginError) {
                Button("OK", role: .cancel) { }
            } message: {
                Text(loginViewModel.errorMessage ?? "Ha ocurrido un error")
            }
        }
    }
}


#Preview {
    LoginScreen(loginAction: { print("Test") })
}


