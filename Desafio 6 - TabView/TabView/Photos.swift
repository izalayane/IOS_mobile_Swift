//
//  Photos.swift
//  TabView
//
//  Created by Student10 on 11/10/23.
//

import SwiftUI

struct Photos: View {
    var body: some View {
        ScrollView{
            ForEach(1..<10){ i in
                Image(systemName: "soccerball")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 200, height: 200)
            }
        }
        
    }
}

struct Photos_Previews: PreviewProvider {
    static var previews: some View {
        Photos()
    }
}
