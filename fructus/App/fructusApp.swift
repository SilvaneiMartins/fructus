//
//  fructusApp.swift
//  fructus
//  www.silvaneimartins.com.br
//  Created by Silvanei  Martins on 23/09/22.
//  silvaneimartins_rcc@hotmail.com

import SwiftUI

@main
struct fructusApp: App {
    // MARK: - Propriedade
    @AppStorage("isOnboarding") var isOnboarding: Bool = true
    
    // MARK: - Visualização
    var body: some Scene {
        WindowGroup {
            if isOnboarding {
                OnboardingView()
            } else {
                ContentView()
            }
        }
    }
}
