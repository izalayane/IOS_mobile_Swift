//
//  Desafio03.swift
//  Aula01
//
//  Created by Student10 on 09/10/23.
//

import SwiftUI

struct Desafio03: View {
    @State private var nome: String = ""
    @State private var showAlert = false
    
    var body: some View {
        ZStack {
            Image("caminhao")
                .resizable()
                .scaledToFill()
                .ignoresSafeArea()
                .blur(radius: 3)
                .opacity(0.2)
            
            VStack{
                Text("Bem Vindo, \(nome)").font(.largeTitle)
                
                TextField(
                    "Digite seu nome", text: $nome)
                .padding()
                .multilineTextAlignment(.center)
                
                Spacer()
                
                VStack{
                    Image("logo")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 100, height: 100)
                        .shadow(radius: 10)
                    
                    Image("truck")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 100, height: 100)
                        .shadow(radius: 10)
                }
                Spacer()
            
                VStack{
                    Button("Entrar"){
                        showAlert = true
                    }
                    .alert(isPresented: $showAlert){
                        Alert(title: Text("ALERTA"), message: Text("Você irá iniciar o desafio"), dismissButton: .default(Text("Vamos lá")))
                    }
                    
                }
                
            }
                

        }
    }
}

struct Desafio03_Previews: PreviewProvider {
    static var previews: some View {
        Desafio03()
    }
}
