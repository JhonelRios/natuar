//
//  UbicationDetailsView.swift
//  natuar
//
//  Created by Jhonel Rios Jaimes on 19/04/24.
//

import SwiftUI

struct UbicationDetailsView : View {
    var onCloseButtonTapped: () -> Void
    
    var body: some View {
        VStack() {
            HStack(alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/) {
                Text("Detalle").bold()
                
                Spacer()
                
                Button(action: onCloseButtonTapped) {
                    Image(systemName: "xmark.circle.fill").foregroundColor(.black.opacity(0.4))
                }
            }
            
            Spacer()
        }
        .padding()
    }
}

#Preview {
    UbicationDetailsView(onCloseButtonTapped: {
        print("Test")
    })
}
