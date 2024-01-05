//
//  Home.swift
//  TabView
//
//  Created by Student10 on 11/10/23.
//

import SwiftUI

struct Home: View {
    var body: some View {
        VStack{
            List{
                ForEach(0..<21){ i in
                    Text("Item \(i)")
                }
            }
        }
        
        
    }
}


struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}
