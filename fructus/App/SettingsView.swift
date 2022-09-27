//
//  SettingsView.swift
//  fructus
//  www.silvaneimartins.com.br
//  Created by Silvanei  Martins on 27/09/22.
//  silvaneimartins_rcc@hotmail.com

import SwiftUI

struct SettingsView: View {
    // MARK: - Propriedade
    
    @Environment(\.presentationMode) var presentationMode
    @AppStorage("isOnboarding") var isOnboarding: Bool = false
    
    // MARK: - Conteudo
    var body: some View {
        NavigationView {
            ScrollView(.vertical,  showsIndicators: false) {
                VStack(spacing: 20) {
                    // MARK: - SESSÃO 1
                    GroupBox(
                        label:
                            SettingsLabelView(labelText: "Frutas", labelImage: "info.circle")
                        ) {
                            Divider()
                                .padding(.vertical, 4)
                            
                            HStack(alignment: .center, spacing: 20) {
                                Image("logo")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 80, height: 80)
                                    .cornerRadius(9)
                                Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.")
                                    .padding(.vertical, 8)
                                    .frame(minHeight: 60)
                                    .layoutPriority(1)
                                    .font(.footnote)
                                    .multilineTextAlignment(.leading)
                            }//: HSTACK
                        }//: GRUPBOX
                    
                    // MARK: - SESSÃO 2
                    GroupBox(
                        label: SettingsLabelView(labelText: "Costumização", labelImage: "paintbrush")
                        ) {
                            Divider()
                                .padding(.vertical, 4)
                            
                            Text("Se desejar, você pode reiniciar o aplicativo alternando o botão nesta caixa. Dessa forma, ele inicia o processo de integração e você verá a tela de boas-vindas novamente.")
                            
                            Toggle(isOn: $isOnboarding) {
                                if isOnboarding {
                                    Text("Reiniciado".uppercased())
                                        .fontWeight(.bold)
                                        .foregroundColor(Color.green)
                                } else {
                                    Text("Reiniciar".uppercased())
                                        .fontWeight(.bold)
                                        .foregroundColor(Color.green)
                                }
                            }
                            .padding()
                            .background(
                                Color(UIColor.tertiarySystemBackground)
                                    .clipShape(RoundedRectangle(cornerRadius: 8, style: .continuous))
                            )
                        }
                    
                    // MARK: - SESSÃO 3
                    GroupBox(
                        label: SettingsLabelView(labelText: "Applicação", labelImage: "apps.iphone")
                    ) {
                        SettingsRowView(name: "Desenvolvedor", content: "Silvanei Martins")
                        SettingsRowView(name: "UI Designer", content: "Silvanei martins")
                        SettingsRowView(name: "Compatibilidade", content: "iOS 14")
                        
                        SettingsRowView(name: "Website", linkLabel: "Silvanei Martins", linkDestination: "silvaneimartins.com.br")
                        SettingsRowView(name: "LinkedIn", linkLabel: "Silvanei Martins", linkDestination: "www.linkedin.com/in/silvanei-martins-a5412436")
                        SettingsRowView(name: "SwiftUi", content: "6.0")
                        SettingsRowView(name: "Versão", content: "1.0.0")
                    }//: GRUPBOX
                    
                }//: VSTACK
                .navigationBarTitle(Text("Configuração"), displayMode: .large)
                .navigationBarItems(
                    trailing:
                        Button(action: {
                            presentationMode.wrappedValue.dismiss()
                        }) {
                            Image(systemName: "xmark")
                        }//: BUTTON
                )
                .padding()
            }//: SCROLL
        }//: NAVIGATION
    }
}

// MARK: - Visualização
struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
