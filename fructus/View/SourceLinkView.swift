//
//  SourceLinkView.swift
//  fructus
//  www.silvaneimartins.com.br
//  Created by Silvanei  Martins on 23/09/22.
//  silvaneimartins_rcc@hotmail.com

import SwiftUI

struct SourceLinkView: View {
    // MARK: - Propriedade
    
    // MARK: - Conteudo
    var body: some View {
        Group() {
            HStack {
                Text("Origem do Conteúdo")
                Spacer()
                Link("Wikipédia", destination: URL(string: "https://wikipedia.com")!)
                Image(systemName: "arrow.up.right.square")
            }//: HSTACK
            .font(.footnote)
        }//: GROUP
    }
}

// MARK: - Visualização
struct SourceLinkView_Previews: PreviewProvider {
    static var previews: some View {
        SourceLinkView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
