//
//  RegisterScreen.swift
//  natuar
//
//  Created by Jhonel Rios Jaimes on 9/09/24.
//

import SwiftUI

final class RegisterFormViewModel: ObservableObject {
    // MARK: - Properties
    
    let namePlaceholder = "Nombre completo"
    let emailPlaceholder = "Email"
    let passwordPlaceholder = "Password"
    
    @Published
    var nameHint = ""
    @Published
    var emailHint = ""
    @Published
    var passwordHint = ""
    
    @Published
    var nameText = ""
    @Published
    var emailText = ""
    @Published
    var passwordText = ""
    
    @Published
    var nameIsValid = true
    @Published
    var emailIsValid = true
    @Published
    var passwordIsValid = true
    
    // MARK: - Methods
    func validateName() {
        // Void
    }
    
    func validateEmail() {
        // Void
    }
    
    func validatePassword() {
        // Void
    }
}

struct RegisterScreen: View {
    @State private var name: String = ""
    @State private var email: String = ""
    @State private var password: String = ""
    
    @State
    private var editingNameField = false {
        didSet {
            guard editingNameField != oldValue else {
                return
            }
            if editingNameField {
                editingNameField = false
            }
        }
    }
    
    @State
    private var editingEmailField = false {
        didSet {
            guard editingEmailField != oldValue else {
                return
            }
            if editingEmailField {
                editingEmailField = false
            }
        }
    }
    
    @State
    private var editingPasswordField = false {
        didSet {
            guard editingPasswordField != oldValue else {
                return
            }
            if editingPasswordField {
                editingPasswordField = false
            }
        }
    }
    
    @StateObject
    private var viewModel = RegisterFormViewModel()
    
    @StateObject private var registerViewModel = RegisterViewModel()
    
    @State var hasRegisterError: Bool = false
    
    @Environment(\.presentationMode) var presentationMode
    
    var body : some View {
        GeometryReader{ geometry in
            VStack{
                Image("FrontPage")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: geometry.size.width*1, height: geometry.size.height*0.4)
                
                VStack(alignment: .leading){
                    
                    Text("Crea una cuenta").font(.system(size: 24,weight: .bold))
                    
                    //                    VStack {
                    //                    Form {
                    MaterialDesignTextField($viewModel.nameText,
                                            placeholder: viewModel.namePlaceholder,
                                            hint: $viewModel.nameHint,
                                            editing: $editingNameField,
                                            valid: $viewModel.nameIsValid,
                                            autocapitalization: .never)
                    
                    MaterialDesignTextField($viewModel.emailText,
                                            placeholder: viewModel.emailPlaceholder,
                                            hint: $viewModel.emailHint,
                                            editing: $editingEmailField,
                                            valid: $viewModel.emailIsValid,
                                            autocapitalization: .never)
                    
                    MaterialDesignTextField($viewModel.passwordText,
                                            placeholder: viewModel.passwordPlaceholder,
                                            hint: $viewModel.passwordHint,
                                            editing: $editingPasswordField,
                                            valid: $viewModel.passwordIsValid,
                                            autocapitalization: .never,
                                            isPassword: true)
                    
                    VStack(alignment: .center, spacing: 20){
                        CustomLoginButton(text: "Crear cuenta", action: {
                            registerViewModel.register(name: viewModel.nameText, email: viewModel.emailText, password: viewModel.passwordText) { success in
                                if success {
                                    backToLoginScreen()
                                } else {
                                    print("register failed")
                                    hasRegisterError = true
                                }
                            }
                        }, isLoading: registerViewModel.isLoading)
                        
                        HStack(spacing: 0) {
                            Text("¿Ya tienes una cuenta?").font(.system(size: 16))
                                .foregroundColor(.black)
                            
                            Spacer().frame(width: 5)
                            
                            Button {
                                backToLoginScreen()
                            } label: {
                                Text("Inicia sesión")
                                    .foregroundColor(Color("PrimaryColor"))
                                    .underline()
                            }
                        }
                    }.frame(width: geometry.size.width * 0.9).font(.system(size: 16, weight: .bold)).foregroundColor(Color("PrimaryColor"))
                    
                    Spacer().frame(height: 40)
                }.padding()
            }
            .ignoresSafeArea()
            .alert("Error al crear usuario", isPresented: $hasRegisterError) {
                Button("OK", role: .cancel) { }
            } message: {
                Text(registerViewModel.errorMessage ?? "Ha ocurrido un error")
            }
        }
        .navigationBarHidden(true)
    }
    
    func backToLoginScreen() {
        presentationMode.wrappedValue.dismiss()
    }
}

#Preview {
    RegisterScreen()
}
