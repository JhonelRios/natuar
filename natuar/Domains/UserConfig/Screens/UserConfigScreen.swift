//
//  UserConfigScreen.swift
//  natuar
//
//  Created by Jhonel Rios Jaimes on 17/04/24.
//

import SwiftUI

import SwiftUI

struct UserConfigScreen: View {
    @StateObject private var userViewModel = UserViewModel()
    var logoutAction: () -> Void
    
    @State private var showDeleteAlert = false
    
    var body: some View {
        NavigationStack {
            if let user = userViewModel.user {
                VStack {
                    VStack(alignment: .leading) {
                        
                        Text(user.name)
                            .font(.headline)
                            .padding([.top, .leading])
                        
                        List {
                            NavigationLink(destination: Text("hola"), label: {
                                Text("Actualizar datos")
                            })
                            
                            NavigationLink(destination: SeenAnimals(seenAnimals: userViewModel.seenAnimals), label: {
                                Text("Animales vistos")
                            })
                            
                            Button {
                                userViewModel.logout()
                                logoutAction()
                            } label: {
                                Text("Cerrar sesión")
                                    .foregroundStyle(.blue)
                            }
                            
                            Button {
                                showDeleteAlert = true
                            } label: {
                                Text("Eliminar cuenta")
                                    .foregroundStyle(.red)
                            }
                        }
                        .listStyle(.plain)
                    }
                    .alert(isPresented: $showDeleteAlert, content: {
                        Alert(
                            title: Text("Confirmar"),
                            message: Text("¿Estás seguro de borrar tu cuenta?"),
                            primaryButton: .destructive(Text("Borrar")) {
                                userViewModel.deleteUser(userId: user.id) { success in
                                    if success {
                                        logoutAction()
                                    } else {
                                        print(userViewModel.errorMessage ?? "")
                                    }
                                }
                            },
                            secondaryButton: .cancel(Text("Cancelar"))
                        )
                    })
                    
                    Spacer()
                    
                    Text("NatuAR - 2024")
                        .font(.footnote)
                        .foregroundStyle(.secondary)
                        .padding(.bottom)
                }
                .navigationTitle("Ajustes")
            } else {
                ProgressView()
                    .navigationTitle("Ajustes")
            }
        }
        .onAppear {
            userViewModel.fetchUserDetails()
            userViewModel.fetchSeenAnimals()
        }
    }
}



#Preview {
    UserConfigScreen(logoutAction: {})
}

