//
//  AcessarTela.swift
//  NavigationStack
//
//  Created by Student10 on 11/10/23.
//

import SwiftUI

struct AcessarTela: View {
    @State  var nome1: String = ""
    var body: some View {
        Text("\(nome1)")
    }
}

struct AcessarTela_Previews: PreviewProvider {
    static var previews: some View {
        AcessarTela()
    }
}
