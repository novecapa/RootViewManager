//
//  AppRootManager.swift
//  RootViewManager
//
//  Created by Josep Cerdá Penadés on 9/6/24.
//

import Foundation

final class AppRootManager: ObservableObject {

    // Start view on Splash
    @Published var currentRoot: AppRoots = .splash

    enum AppRoots {
        case splash
        case authentication
        case home
    }
}
