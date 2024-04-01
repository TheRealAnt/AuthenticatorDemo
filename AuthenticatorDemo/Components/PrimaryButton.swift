//
//  PrimaryButton.swift
//  AuthenticatorDemo
//
//  Created by Antonie Sander on 2024/04/01.
//

import SwiftUI

struct PrimaryButton: View {
    var image: String?
    var showImage = true
    var text: String
    
    var body: some View {
        HStack {
            if showImage {
                Image(systemName: image ?? "person.fill")
            }
            
            Text(text)
        }
        .padding()
        .padding(.horizontal)
        .background(.white)
        .cornerRadius(30)
        .shadow(radius: 10)
    }
}

#Preview {
    PrimaryButton(image: "faceid", text: "Login with FaceID")
}
