//
//  Title.swift
//  AuthenticatorDemo
//
//  Created by Antonie Sander on 2024/04/01.
//

import SwiftUI

struct Title: View {
    var body: some View {
        Text("Authenticator")
            .bold()
            .font(.title)
            .foregroundStyle(.white)
    }
}

#Preview {
    Title()
        .background(LinearGradient(colors: [.blue, .purple], startPoint: .topLeading, endPoint: .bottomTrailing))
}
