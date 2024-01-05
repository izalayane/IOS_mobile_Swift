//
//  Modo2.swift
//  NavigationStack
//
//  Created by Student10 on 11/10/23.
//

import SwiftUI
struct Modo2: View {
    
    @State  var nome: String =  ""
    
    var body: some View {
        NavigationStack{
            VStack{
                
                TextField("Digite seu nome: ", text: $nome).padding()
                Text("Estamos percorrendo um caminho, \(nome)...")
                
                NavigationLink("Acessar Tela", destination: AcessarTela(nome1:nome))
            }
            
        }
    }
}

struct Modo2_Previews: PreviewProvider {
    static var previews: some View {
        Modo2()
    }
}
