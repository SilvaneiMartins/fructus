//
//  ContentView.swift
//  fructus
//  www.silvaneimartins.com.br
//  Created by Silvanei  Martins on 23/09/22.
//  silvaneimartins_rcc@hotmail.com

import SwiftUI

struct ContentView: View {
    // MARK: - Propriedade

    var fruits: [Fruit] = fruitsData
    
    // MARK: Conteudo
    var body: some View {
        NavigationView {
            List {
                ForEach(fruits.shuffled()) { item in
                    NavigationLink(destination: FruitDetailView(fruit: item)) {
                        FruitRowView(fruit: item)
                            .padding(.vertical, 4)
                    }
                }//: FOREACH
            }//: LIST
            .padding(.horizontal, -8)
            .navigationTitle("Fruits")
        }//: NAVIGATION
    }
}

// MARK: - Visualização
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(fruits: fruitsData)
    }
}
