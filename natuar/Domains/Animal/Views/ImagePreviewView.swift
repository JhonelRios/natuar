//
//  ImagePreviewView.swift
//  natuar
//
//  Created by Jhonel Rios Jaimes on 26/08/24.
//

import SwiftUI

struct ImagePreviewView: View {
    let image: UIImage
    @Binding var isPresented: Bool
    
    func shareImage() {
        let activityVC = UIActivityViewController(activityItems: [image], applicationActivities: nil)
        
        if let windowScene = UIApplication.shared.connectedScenes.first as? UIWindowScene,
           let rootViewController = windowScene.windows.first?.rootViewController {
            rootViewController.present(activityVC, animated: true, completion: nil)
        }
    }
    
    var body: some View {
        VStack {
            HStack {
                Spacer()
                
                Button(action: {
                    isPresented = false
                }) {
                    Image(systemName: "xmark.circle.fill")
                        .foregroundColor(.white)
                        .font(.title)
                        .padding()
                }
            }
            .padding(.leading, 10)
            
            Spacer().frame(height: 5)
            
            Image(uiImage: image)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(height: UIScreen.main.bounds.height * 0.5)
                .padding()
            
            //            ShareLink(item: Image(uiImage: image), preview: SharePreview("Fotografía", image: Image(uiImage: image))) {
            //                Text("Compartir experiencia")
            //                    .padding()
            //                    .background(Color.blue)
            //                    .foregroundColor(.white)
            //            }
            //            .padding(.bottom)
            //            if let tempURL = saveImageToTemporaryFile() {
            //                ShareLink(item: tempURL, preview: SharePreview("Fotografía", image: Image(uiImage: image))) {
            //                    Text("Compartir experiencia")
            //                        .padding()
            //                        .background(Color.blue)
            //                        .foregroundColor(.white)
            //                }
            //                .padding(.bottom)
            //            }
            //            ShareLink(item: URL(string: "https://google.com")!) {
            //                Text("Compartir experiencia")
            //                    .padding()
            //                    .background(Color.blue)
            //                    .foregroundColor(.white)
            //            }
            //            .padding(.bottom)
            Button(action: {
                shareImage()
            }) {
                Text("Compartir experiencia")
                    .padding()
                    .background(Color.blue)
                    .foregroundColor(.white)
            }
            .padding(.bottom)
        }
        .background(Color.black.opacity(0.8))
        .edgesIgnoringSafeArea(.all)
    }
}

//#Preview {
//    ImagePreviewView()
//}
