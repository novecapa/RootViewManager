//
//  LoginView.swift
//  RootViewManager
//
//  Created by Josep Cerdá Penadés on 9/6/24.
//

import SwiftUI

struct LoginView: View {

    @EnvironmentObject private var appRootManager: AppRootManager
    @State var username: String = ""
    @State var password: String = ""

    var body: some View {
        ZStack {
            Color.accentColor
            .ignoresSafeArea()
            VStack {
                Spacer()
                Text("Login")
                    .foregroundColor(.white)
                    .frame(alignment: .center)
                    .font(.title)
                    
                VStack {
                    VStack {
                        Text("User")
                            .frame(maxWidth: .infinity,
                                   alignment: .leading)
                            .font(.title3)
                        TextField("username",
                                  text: $username)
                            .autocapitalization(.none)
                            .keyboardType(.default)
                            .foregroundColor(.white)
                    }
                    .padding(.all, 12)
                    HStack {
                        // Empty stack view
                    }
                    .frame(height: 4)
                    .frame(maxWidth: .infinity)
                    .background(.white)
                    VStack {
                        Text("Password")
                            .frame(maxWidth: .infinity,
                                   alignment: .leading)
                            .font(.title3)
                        SecureField("password",
                                    text: $password)
                            .autocapitalization(.none)
                            .foregroundColor(.white)
                    }
                    .padding(.all, 12)
                }
                .cornerRadius(12)
                .overlay(
                    RoundedRectangle(cornerRadius: 12)
                        .stroke(.white,
                                lineWidth: 4)
                )
                .padding(.horizontal, 40)
                Button(action: {
                    withAnimation(.easeOut) {
                        appRootManager.currentRoot = .home
                    }
                }, label: {
                    Text("Enter")
                        .tint(.black)
                        .font(.title2)
                        .padding()
                        .foregroundColor(.white)
                })
                Spacer()
            }
        }
    }
}

#Preview {
    LoginView()
}
