//
//  FruitsCardView.swift
//  fructus
//  www.silvaneimartins.com.br
//  Created by Silvanei  Martins on 23/09/22.
//  silvaneimartins_rcc@hotmail.com

import SwiftUI

struct FruitsCardView: View {
    // MARK: - Propriedade
    
    var fruit: Fruit
    @State private var isAnimating: Bool = false
    
    // MARK: - Conteudo
    var body: some View {
        ZStack {
            VStack(spacing: 20) {
                // MARK: - IMAGE DA FRUTA
                Image(fruit.image)
                    .resizable()
                    .scaledToFit()
                    .shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 0.15), radius: 8, x: 6, y: 8)
                    .scaleEffect(isAnimating ? 1 : 0.6)
                
                // MARK: - TITULO DA FRUTA
                Text(fruit.title)
                    .foregroundColor(Color.white)
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 0.15), radius: 2, x: 2, y: 2)
                
                // MARK: - DESCRIÇÃO DA FRUTA
                Text(fruit.headline)
                    .foregroundColor(Color.white)
                    .multilineTextAlignment(.center)
                    .padding(.horizontal, 16)
                    .frame(maxWidth: 480)
                
                // MARK: - BOTÃO DE INICIO
                StartButtonView()
                
            }//: VSTACK
        }//: ZSTACK
        .onAppear {
            withAnimation(.easeOut(duration: 0.5)) {
                isAnimating = true
            }
        }
        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .center)
        .background(LinearGradient(gradient: Gradient(colors: fruit.gradientColors), startPoint: .top, endPoint: .bottom))
        .cornerRadius(20)
        .padding(.horizontal, 20)
    }
}

// MARK: - Visualização
struct FruitsCardView_Previews: PreviewProvider {
    static var previews: some View {
        FruitsCardView(fruit: fruitsData[1])
            .previewLayout(.sizeThatFits)
    }
}
