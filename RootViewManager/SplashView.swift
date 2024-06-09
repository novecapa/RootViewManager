//
//  SplashView.swift
//  RootViewManager
//
//  Created by Josep Cerdá Penadés on 9/6/24.
//

import SwiftUI

struct SplashView: View {

    @EnvironmentObject private var appRootManager: AppRootManager

    var body: some View {
        ZStack {
            Color.yellow
            .ignoresSafeArea()
            Text("Splash Screen")
                .font(.title)
                .fontWeight(.bold)
                .foregroundColor(.white)
        }
        .onAppear() {
            DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
                withAnimation(.easeOut) {
                    appRootManager.currentRoot = .authentication
                }
            }
        }
    }
}

#Preview {
    SplashView()
}
