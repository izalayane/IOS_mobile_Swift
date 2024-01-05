//
//  ContentView.swift
//  Maps
//
//  Created by Student10 on 18/10/23.
//

import SwiftUI
import MapKit

struct ContentView: View {
    
    @State private var region = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 5.20753, longitude: 37.32330), span: MKCoordinateSpan(latitudeDelta:10, longitudeDelta: 10))
    
   
    @State var xTrue = false
    
    var body: some View {
        ZStack{
            Map(coordinateRegion: $region, annotationItems: arrayCountry){ a in
                MapAnnotation(coordinate: a.coordinate) {
                    Image(systemName: "mappin.square.fill")
                        .foregroundColor(.red)
                        .onTapGesture {
                            xTrue = true
                        }
                }
                
            }.sheet(isPresented: $xTrue){
                ZStack{
                    LinearGradient(colors: [.yellow, .white], startPoint: .top, endPoint: .bottom)
                    VStack{
                        
                        Text("\(name)")
                    }
                    
                }.ignoresSafeArea()
            }
                    .ignoresSafeArea()
            
            
            VStack{
                Text("W O R L D   M A P")
                    .foregroundColor(.gray)
                    .font(.largeTitle)
                    .bold()
                
                Spacer()
                
                ScrollView(.horizontal){
                    HStack{
                        ForEach(arrayCountry) { Country in
                            Button("\(Country.name)"){
                                region.center = Country.coordinate
                                
                            }.padding()
                                .foregroundColor(.white)
                                .background(Color(.gray))
                                .clipShape(Capsule())
                            
                        }
                    }
                }
            }
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
