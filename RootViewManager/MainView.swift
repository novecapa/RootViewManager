//
//  MainView.swift
//  RootViewManager
//
//  Created by Josep Cerdá Penadés on 9/6/24.
//

import SwiftUI

struct MainView: View {

    @EnvironmentObject private var appRootManager: AppRootManager

    var body: some View {
        NavigationStack {
            ZStack {
                Color.pink
                .ignoresSafeArea()
                Text("Main View")
                    .font(.title)
                    .fontWeight(.bold)
                    .foregroundColor(.white)
            }
            .navigationTitle("🚀🎾")
            .navigationBarItems(trailing: Image(systemName: "rectangle.portrait.and.arrow.right.fill")
                .tint(.white)
                .onTapGesture {
                    withAnimation(.easeOut) {
                        appRootManager.currentRoot = .authentication
                    }
                }
            )
        }
    }
}

#Preview {
    MainView()
}
