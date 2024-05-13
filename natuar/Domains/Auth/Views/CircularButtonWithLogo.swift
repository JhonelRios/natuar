//
//  CircularButtonWithLogo.swift
//  natuar
//
//  Created by Nilton Torres on 13/05/24.
//

import Foundation
import SwiftUI
struct CircularButtonWithLogo: View {
    var imageName: String
    var action: () -> Void
    
    var body: some View {
        Button(action: action) {
            Image(imageName)
                .resizable()
                .frame(width: 64, height: 64)
                .padding(24)
                .background(Color.gray)
                .clipShape(Circle())
        }
    }
}
