//
//  ContentView.swift
//  DesafioSpotify
//
//  Created by Student on 16/10/23.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        NavigationStack{
            ZStack {
                
                LinearGradient(colors: [.blue, .black], startPoint: .top, endPoint: .bottom)
                
                
                VStack{
                    
                    AsyncImage(url: URL(string: "https://i.pinimg.com/236x/35/cc/35/35cc357473dcc4c3f367c3f6fc12fbef.jpg"))
                    // .padding(.top, 100)
                        .offset(y: 60)
                    
                    VStack (alignment: .leading) {
                        
                        Text("HackaFM").font(.title).foregroundColor(.white)
                        
                        HStack{
                            
                            AsyncImage(url: URL(string: "https://i.pinimg.com/236x/35/cc/35/35cc357473dcc4c3f367c3f6fc12fbef.jpg"),scale: 6)
                            
                            Text("HackSong").foregroundColor(.white)
                        }  .offset(y: -12)
                        //  Spacer()
                        
                        ScrollView{
                            
                            ForEach(arrayMusicas, id: \.id) { Musica in
                                NavigationLink(destination: AcessoMusica(x: Musica)) {
                                
                                
                                HStack {
                                    AsyncImage(url: URL(string: Musica.capa),
                                               content: { image in
                                        image.resizable()
                                            .frame(width: 50, height: 50)
                                    },
                                               placeholder: {
                                        ProgressView()
                                    })
                                    
                                    
                                    HStack{
                                        VStack (alignment: .leading){
                                            
                                            Text(Musica.name).font(.title2).foregroundColor(.white)
                                            Text(Musica.artista).foregroundColor(.white)
                                            
                                        }
                                        Spacer()
                                        Image(systemName: "ellipsis").foregroundColor(.white)
                                    }
                                        
                                    } //VStack
                                    Spacer()
                                } //HStack
                            }//ForEach
                            HStack{
                                Text("Sugeridos").font(.title).foregroundColor(.white)
                                Spacer()
                            }
                            ScrollView(.horizontal){
                                
                                HStack{
                                    ForEach(arrayMusicas) { ImagemMusica in
                                        
                                        AsyncImage(url: URL(string: ImagemMusica.capa),
                                                   content: { image in
                                            image.resizable()
                                                .frame(width: 200, height: 200)
                                        },
                                                   placeholder: {
                                            ProgressView()
                                        })
                                    }
                                    
                                    
                                }
                            }
                        }
                        
                    }  .offset(y: 60)
                    
                    
                    
                }
                
                
            }.ignoresSafeArea()
            
        }.accentColor(.white)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
