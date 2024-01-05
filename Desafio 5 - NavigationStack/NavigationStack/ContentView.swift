//
//  ContentView.swift
//  NavigationStack
//
//  Created by Student10 on 11/10/23.
//

import SwiftUI

struct ContentView: View {
    @State private var showingSheet = false
    var body: some View {
        NavigationStack{
            VStack{
                
                NavigationLink("MODO 1", destination: Modo1())
                    .navigationTitle("Título: teste")
                    .padding()
                
                NavigationLink("MODO 2", destination: Modo2(nome: ""))
                    .padding()
                
                Button("MODO 3"){
                    showingSheet.toggle()
                }.sheet(isPresented: $showingSheet){
                    Modo3()
                }.padding()
            }
        }
        
    
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
