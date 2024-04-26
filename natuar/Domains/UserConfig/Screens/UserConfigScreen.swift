//
//  UserConfigScreen.swift
//  natuar
//
//  Created by Jhonel Rios Jaimes on 17/04/24.
//

import SwiftUI

import SwiftUI

struct UserConfigScreen: View {

    var body: some View {
        NavigationStack {
            VStack {
       
                HStack {
                    Image(systemName: "person.circle")
                        .resizable()
                        .frame(width: 100, height: 100)
                    Text("Nombre y apellido")
                }
                .padding(.vertical, 30)
                
                List {
                    Section(header: Text("CUENTA")) {
                        ForEach(["Actualizar datos", "Idioma", "Cerrar Sesión", "Eliminar cuenta"], id: \.self) { text in
                            NavigationLink(destination: Text(text)) {
                                HStack {
                                    Text(text)
                                   
                                }
                                .padding(10)
                            }
                        }
                    }
                }
                .listStyle(.plain)
            }
            .navigationTitle("Ajustes")
        }
    }
}



#Preview {
    UserConfigScreen()
}

