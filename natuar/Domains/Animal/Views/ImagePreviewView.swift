//
//  ImagePreviewView.swift
//  natuar
//
//  Created by Jhonel Rios Jaimes on 26/08/24.
//

import SwiftUI

struct ImagePreviewView: View {
    @Environment(\.presentationMode) var presentationMode
    @EnvironmentObject var globalData: GlobalData
    
    let image: UIImage
    let onDismiss: () -> Void
    
    var body: some View {
        ZStack(alignment: .topLeading) {
            ZStack(alignment: .bottom) {
                Image(uiImage: image)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
//                    .frame(height: UIScreen.main.bounds.height * 0.8)
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                    .ignoresSafeArea()
//                    .cornerRadius(10)
                
                /*
                 This share link opens a new sheet, so if there is a current sheet in the view it won't be showed
                 so you need to ensure to hide the another sheet or use this element inside a new view
                 */
                ShareLink(item: Image(uiImage: image), preview: SharePreview("Fotografía", image: Image(uiImage: image))) {
                    Text("Compartir experiencia")
                        .foregroundColor(.white)
                        .padding(.all, 10)
                        .background(Color.blue)
                        .cornerRadius(10)
                }
                .padding(.bottom, 60)
            }
            
            BackButton(action: {
                presentationMode.wrappedValue.dismiss()
                onDismiss()
            })
            .padding(.top, 40)
        }
        .navigationBarHidden(true)
        .toolbar(.hidden, for: .tabBar)
        .onAppear {
            globalData.hideTabBar()
        }
        .onDisappear {
            globalData.showTabBar()
        }
    }
}

//#Preview {
//    ImagePreviewView()
//}
