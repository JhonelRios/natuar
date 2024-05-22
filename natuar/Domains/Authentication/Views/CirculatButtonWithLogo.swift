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
                .aspectRatio(contentMode: .fill)
            
                .frame(width: 24, height: 24)
                .padding(12)
                .background(Color("BackgroundCircularButton"))
                .clipShape(Circle())
        }
    }
}
