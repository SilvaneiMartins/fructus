//
//  OnboardingVIew.swift
//  fructus
//  www.silvaneimartins.com.br
//  Created by Silvanei  Martins on 23/09/22.
//  silvaneimartins_rcc@hotmail.com

import SwiftUI

struct OnboardingVIew: View {
    // MARK: - Propriedae
    
    var fruits: [Fruit] = fruitsData
    
    // MARK: - Conteudo
    var body: some View {
        TabView {
            ForEach(fruits[0...5]) { item in
                FruitsCardView(fruit: item)
            }//: FOREACH
        }//: TAB
        .tabViewStyle(PageTabViewStyle())
        .padding(.vertical, 20)
    }
}

// MARK: - Visualizaçãos
struct OnboardingVIew_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingVIew(fruits: fruitsData)
    }
}
