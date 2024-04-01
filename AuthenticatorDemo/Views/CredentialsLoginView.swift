//
//  CredentialsLoginView.swift
//  AuthenticatorDemo
//
//  Created by Antonie Sander on 2024/04/01.
//

import SwiftUI

struct CredentialsLoginView: View {
    @EnvironmentObject var authenticationManager: AuthenticationManager
    @State private var username = ""
    @State private var password = ""
    
    var body: some View {
        VStack(spacing: 40) {
           Title()
            TextField("Username", text: $username)
            SecureField("Password", text: $password)
            PrimaryButton(showImage: false, text: "Login")
                .onTapGesture {
                    authenticationManager.authenticateWithCredentials(username: username, password: password)
                }
        }
        .textFieldStyle(.roundedBorder)
        .padding()
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(LinearGradient(colors: [.blue, .purple], startPoint: .topLeading, endPoint: .bottomTrailing))
    }
}

#Preview {
    CredentialsLoginView()
        .environmentObject(AuthenticationManager())
}
