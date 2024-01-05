//
//  AcessoMusica.swift
//  DesafioSpotify
//
//  Created by Student on 17/10/23.
//

import SwiftUI

struct AcessoMusica: View {
    var x: Song
    
    var body: some View {
        ZStack{
            
            LinearGradient(colors: [.blue, .black], startPoint: .top, endPoint: .bottom)
            
            VStack{
                Spacer()
                AsyncImage(url: URL(string: x.capa),
                           content: { image in
                    image.resizable()
                        .frame(width: 200, height: 200)
                },
                           placeholder: {
                    ProgressView()
                })
                
                Text(x.name).foregroundColor(.white).font(.title)
                Text(x.artista).foregroundColor(.white)
                Spacer()
                
            
                HStack{
                    
                    Image(systemName: "shuffle").foregroundColor(.white)
                    Image(systemName: "backward.end.fill").foregroundColor(.white)
                    Image(systemName: "play.fill").foregroundColor(.white)
                    Image(systemName: "forward.end.fill").foregroundColor(.white)
                    Image(systemName: "repeat").foregroundColor(.white)
                    
                    
                }.font(.system(size: 30))
                
                Spacer()
            }
        }.ignoresSafeArea()
        
    }
}

struct AcessoMusica_Previews: PreviewProvider {
    static var previews: some View {
        AcessoMusica(x: Song(id: 1, name: "teste", artista: "teste", capa: "https://i.pinimg.com/236x/35/cc/35/35cc357473dcc4c3f367c3f6fc12fbef.jpg"))
    
    }
}
