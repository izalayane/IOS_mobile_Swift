//  ContentView.swift
//  Aula01
//
//  Created by Student10 on 09/10/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack (){
            Image("caminhao")
                .resizable()
                .scaledToFit()
            
            Text("HackTruck").font(.title).foregroundColor(.blue).bold()
            HStack{
                Text("Maker").font(.title2).foregroundColor(.yellow).bold()
                Text("Space").font(.title2).foregroundColor(.red).bold()
            }
        }
            .padding()
        }
    }

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
