//
//  SettingsLabelView.swift
//  fructus
//  www.silvaneimartins.com.br
//  Created by Silvanei  Martins on 27/09/22.
//  silvaneimartins_rcc@hotmail.com

import SwiftUI

struct SettingsLabelView: View {
    // MARK: - Propriedade
    
    var labelText: String
    var labelImage: String
    
    // MARK: - Conteudo
    var body: some View {
        HStack{
            Text(labelText.uppercased())
                .fontWeight(.bold)
            Spacer()
            Image(systemName: labelImage)
        }
    }
}

// MARK: - Visualização
struct SettingsLabelView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsLabelView(labelText: "Frutas", labelImage: "info.circle")
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
