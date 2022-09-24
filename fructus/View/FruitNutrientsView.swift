//
//  FruitNutrientsView.swift
//  fructus
//  www.silvaneimartins.com.br
//  Created by Silvanei  Martins on 23/09/22.
//  silvaneimartins_rcc@hotmail.com

import SwiftUI

struct FruitNutrientsView: View {
    // MARK: - Propriedade
    
    var fruit: Fruit
    let nutrients: [String] = [
        "Energia",
        "Açúcar",
        "Gordo",
        "Proteína",
        "Vitaminas",
        "Minerais",
    ]
    
    // MARK: - Conteudo
    var body: some View {
        GroupBox() {
            DisclosureGroup("Valor nutricional por 100g") {
                ForEach(0..<nutrients.count, id: \.self) { item in
                    Divider()
                        .padding(.vertical, 2)
                    
                    HStack {
                        Group {
                            Image(systemName: "info.circle")
                            Text(nutrients[item])
                        }
                        .foregroundColor(fruit.gradientColors[1])
                        .font(Font.system(.body).bold())
                        
                        Spacer(minLength: 25)
                        
                        Text(fruit.nutrition[item])
                            .multilineTextAlignment(.trailing)
                    }//: HSTACK
                }//: FOREACH
            }
        }//: GROUPBOX
    }
}

// MARK: - Visualização
struct FruitNutrientsView_Previews: PreviewProvider {
    static var previews: some View {
        FruitNutrientsView(fruit: fruitsData[0])
            .preferredColorScheme(.dark)
            .previewLayout(.fixed(width: 375, height: 480))
            .padding()
    }
}
