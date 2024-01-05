//
//  ContentView.swift
//  TabView
//
//  Created by Student10 on 11/10/23.
//

import SwiftUI

struct ContentView: View {
var body: some View {
    TabView{
        Home()
            .tabItem(){
            Label("Home", systemImage:"person.line.dotted.person.fill")
            }
        Search()
            .tabItem(){
                Label("Search", systemImage: "magnifyingglass")
            }
        Photos()
            .tabItem(){
                Label("Photos", systemImage: "photo")
            }
        Messages()
            .tabItem(){
                Label("Messages", systemImage: "message.fill")
            }.badge(3)
        Profile()
            .tabItem(){
                Label("Profile", systemImage: "person.circle.fill")
            }.badge(1)
        
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
