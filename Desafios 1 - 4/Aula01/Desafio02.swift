//
//  Desafio02.swift
//  Aula01
//
//  Created by Student10 on 09/10/23.
//

import SwiftUI

struct Desafio02: View {
    var body: some View {
        VStack {
            Image("caminhao")
                .resizable()
                .padding(50)
            Spacer()
            ZStack(alignment: .top){
                Image("caminhao").resizable().scaledToFit().clipShape(Circle())
                Text("hackTruck").font(.title).foregroundColor(.blue)
                    .bold()
                    .padding(.top, 30)
            }
            Spacer()
            
            ZStack{
                Rectangle().scaledToFit()
                
                HStack{
                    Text("Maker").foregroundColor(.yellow)
                    Text("Space").foregroundColor(.red)
                    
                }
            }
        }.ignoresSafeArea()
    }
}

struct Desafio02_Previews: PreviewProvider {
    static var previews: some View {
        Desafio02()
    }
}
