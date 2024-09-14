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
    
    func setCurrentName(currentName: String) {
        self.name = currentName
    }
}

struct UpdateUserForm: View {
    @Environment(\.presentationMode) var presentationMode
    
    var currentUser: User
    var updateUserData: () -> Void
    
    @StateObject private var viewModel = UpdateUserViewModel()
    @StateObject private var userViewModel = UserViewModel()
    
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
                    userViewModel.updateUser(userId: currentUser.id, name: viewModel.name) { success in
                        if success {
                            updateUserData()
                            presentationMode.wrappedValue.dismiss()
                        } else {
                            print("Update user failed")
                        }
                    }
                }, isLoading: userViewModel.isLoading)
                
                Spacer()
            }
            .padding()
            .navigationTitle("Actualizar datos")
            .onAppear {
                viewModel.setCurrentName(currentName: currentUser.name)
            }
        }
    }
}

//#Preview {
//    UpdateUserForm(currentUserName: "Jhonel Rios")
//}
