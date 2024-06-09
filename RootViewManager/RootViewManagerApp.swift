//
//  RootViewManagerApp.swift
//  RootViewManager
//
//  Created by Josep Cerdá Penadés on 9/6/24.
//

import SwiftUI

@main
struct RootViewManagerApp: App {

    // Register app root manager
    @StateObject private var appRootManager = AppRootManager()

    var body: some Scene {
        WindowGroup {
            Group {
                switch appRootManager.currentRoot {
                case .splash:
                    SplashView()
                case .authentication:
                    LoginView()
                case .home:
                    MainView()
                }
            }
            .environmentObject(appRootManager)
        }
    }
}
