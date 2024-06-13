//
//  UserConfigScreen.swift
//  natuar
//
//  Created by Jhonel Rios Jaimes on 17/04/24.
//

import SwiftUI

import SwiftUI

struct UserConfigScreen: View {
    var logoutAction: () -> Void
    
    var body: some View {
        NavigationStack {
            VStack {
                VStack(alignment: .leading) {
                    
                    Text("Nombre y apellido")
                        .font(.headline)
                        .padding([.top, .leading])
                    
                    List {
                        NavigationLink(destination: Text("hola"), label: {
                            Text("Actualizar datos")
                        })
                        
                        NavigationLink(destination: Text("hola"), label: {
                            Text("Animales vistos")
                        })
                        
                        Button {
                            print("hola")
                        } label: {
                            Text("Cerrar sesión")
                                .foregroundStyle(.blue)
                        }
                        
                        Button {
                            print("hola")
                        } label: {
                            Text("Eliminar cuenta")
                                .foregroundStyle(.red)
                        }
                    }
                    .listStyle(.plain)
                }
                
                Spacer()
                
                Text("NatuAR - 2024")
                    .font(.footnote)
                    .foregroundStyle(.secondary)
            }
            .navigationTitle("Ajustes")
        }
    }
}



#Preview {
    UserConfigScreen(logoutAction: {})
}

