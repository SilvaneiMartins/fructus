//
//  StartButtonView.swift
//  fructus
//  www.silvaneimartins.com.br
//  Created by Silvanei  Martins on 23/09/22.
//  silvaneimartins_rcc@hotmail.com

import SwiftUI

struct StartButtonView: View {
    // MARK: - Propriedade
    
    @AppStorage("isOnboarding") var isOnboarding: Bool?
    
    // MARK: - Conteudo
    var body: some View {
        Button(action: {
            isOnboarding = false
        }) {
            HStack(spacing: 8) {
                Text("Iniciar")
                
                Image(systemName: "arrow.right.circle")
                    .imageScale(.large)
            }//: HSTACK
            .padding(.horizontal, 16)
            .padding(.vertical, 10)
            .background(Capsule().strokeBorder(Color.white, lineWidth: 1.25)
            )
        }//: BUTTON
        .accentColor(Color.white)
    }
}

// MARK: - Visualização
struct StartButtonView_Previews: PreviewProvider {
    static var previews: some View {
        StartButtonView()
            .preferredColorScheme(.dark)
            .previewLayout(.sizeThatFits)
    }
}
