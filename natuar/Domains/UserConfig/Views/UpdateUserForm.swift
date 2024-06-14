//
//  UpdateUserForm.swift
//  natuar
//
//  Created by Jhonel Rios Jaimes on 12/06/24.
//

import SwiftUI

final class UpdateUserViewModel: ObservableObject {
    let namePlaceholder = "Nombre"
    
    @Published
    var hint1 = ""
    
    @Published
    var name = ""
    
    @Published
    var nameValid = true
    
    func validateName() {
        // TODO
    }
}

struct UpdateUserForm: View {
    @StateObject private var viewModel = UpdateUserViewModel()
    
    @State private var editingName = false
    
    var body: some View {
        NavigationStack {
            VStack(alignment: .leading, spacing: 8) {
//                Text("Actualizar datos")
//                    .font(.system(size: 24, weight: .bold))
//                    .padding(.bottom)
                
                MaterialDesignTextField(
                    $viewModel.name,
                    placeholder: viewModel.namePlaceholder,
                    hint: $viewModel.hint1,
                    editing: $editingName,
                    valid: $viewModel.nameValid,
                    autocapitalization: .never
                )
                
                CustomLoginButton(text: "Guardar cambios", action: {
    //                loginViewModel.login(email: viewModel.text1, password: viewModel.text2) { success in
    //                    if success {
    //                        loginAction()
    //                    } else {
    //                        print("Login failed")
    //                        hasLoginError = true
    //                    }
    //                }
                }, isLoading: false)
                
                Spacer()
            }
            .padding()
            .navigationTitle("Actualizar datos")
        }
    }
}

#Preview {
    UpdateUserForm()
}
