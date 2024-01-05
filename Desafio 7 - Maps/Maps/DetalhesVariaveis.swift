//
//  DetalhesVariaveis.swift
//  Maps
//
//  Created by Student10 on 18/10/23.
//

import Foundation
import MapKit

struct Location: Identifiable {
    let id = UUID()
    let name: String
    let continent: String
    let coordinate: CLLocationCoordinate2D
    let description: String
}

var arrayCountry: [Location] = [
    Location(name: "BRASIL", continent: "America do Sul", coordinate: CLLocationCoordinate2D(latitude: -15.7213698, longitude: -48.10216895), description: "O Brasil, um vasto país sul-americano, estende-se da Bacia Amazônica, no norte, até os vinhedos e as gigantescas Cataratas do Iguaçu, no sul. O Rio de Janeiro, simbolizado pela sua estátua de 38 metros de altura do Cristo Redentor, situada no topo do Corcovado, é famoso pelas movimentadas praias de Copacabana e Ipanema, bem como pelo imenso e animado Carnaval, com desfiles de carros alegóricos, fantasias extravagantes e samba"),
    Location(name: "ESTADOS UNIDOS", continent: "America do Norte", coordinate: CLLocationCoordinate2D(latitude: 40.69754, longitude: -74.309324), description: "Os EUA são um país com 50 estados que cobrem uma vasta faixa da América do Norte, com o Alasca ao noroeste e o Havaí no Oceano Pacífico, estendendo a presença do país. As principais cidades da costa atlântica são Nova York, um centro financeiro e cultural global, e a capital, Washington, DC. Chicago, uma metrópole do centro-oeste, é conhecida por sua importante arquitetura, enquanto Los Angeles, na costa oeste, é famosa pelas produções cinematográficas de Hollywood."),
    Location(name: "ITÁLIA", continent: "Europa", coordinate: CLLocationCoordinate2D(latitude: 41.9088943, longitude: 11.912183), description: "Itália, oficialmente República Italiana, é uma república parlamentar unitária localizada no centro-sul da Europa. Ao norte, faz fronteira com França, Suíça, Áustria e Eslovênia ao longo dos Alpes. A parte sul consiste na totalidade da península Itálica, Sicília, Sardenha, as duas maiores ilhas no mar Mediterrâneo, e muitas outras ilhas menores ficam no entorno do território italiano."),
    Location(name: "COREIA DO SUL", continent: "Ásia", coordinate: CLLocationCoordinate2D(latitude: 37.5650337, longitude: 126.8093304), description: "Coreia do Sul, oficialmente República da Coreia, é um país da Ásia Oriental, localizado na parte sul da Península da Coreia. Sua única fronteira terrestre é com a Coreia do Norte, com a qual formou apenas um país até 1945. Faz fronteira a leste com o Mar do Japão, a sul com o Estreito da Coreia, que o separa do Japão, e a oeste com o Mar Amarelo.")
]


