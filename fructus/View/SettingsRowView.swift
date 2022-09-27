//
//  SettingsRowView.swift
//  fructus
//  www.silvaneimartins.com.br
//  Created by Silvanei  Martins on 27/09/22.
//  silvaneimartins_rcc@hotmail.com

import SwiftUI

struct SettingsRowView: View {
    // MARK: - Propriedade
    
    var name: String
    var content: String? = nil
    var linkLabel: String? = nil
    var linkDestination: String? = nil
    
    // MARK: - Conteudo
    var body: some View {
        VStack {
            Divider()
                .padding(.vertical, 4)
            
            HStack {
                Text(name)
                    .foregroundColor(Color.gray)
                Spacer()
                if (content != nil) {
                    Text(content!)
                } else if (linkLabel != nil && linkDestination != nil) {
                    Link(linkLabel!, destination: URL(string: "https://\(linkDestination!)")!)
                    Image(systemName: "arrow.up.right.square")
                        .foregroundColor(.pink)
                } else {
                    EmptyView()
                }
            }//: HSTACK
        }//: ZSTACK
    }
}

// MARK: - Visualização
struct SettingsRowView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsRowView(name: "Desenvolvedor", content: "Silvanei Martins")
            .previewLayout(.fixed(width: 375, height: 60))
            .padding()
    }
}
