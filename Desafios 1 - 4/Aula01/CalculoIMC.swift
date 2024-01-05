//
//  CalculoIMC.swift
//  Aula01
//
//  Created by Student04 on 10/10/23.
//

import SwiftUI
struct CalculoIMC: View {
    @State var peso: Float?
    @State var altura: Float?
    @State var resultado: Float = 0.0
    @State var cor : Color = .gray
    @State var valor: String = ""
    
    
    let formatter: NumberFormatter = {
        let formatter = NumberFormatter()
        formatter.numberStyle = .decimal
        return formatter
    }()
    
    func imc(_ pPeso : Float, _ pAltura : Float) -> Float{
        return  (pPeso / (pAltura * pAltura))
    }
    
    var body: some View {
        ZStack{
            
            
            VStack{
                Text("Calculadora de IMC")
                    .font(.largeTitle)
                TextField("Digite o Peso: ", value: $peso, format: .number).textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding()
                
                TextField("Digite a Altura: ", value: $altura, format: .number)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding()
                
                Button("Calcular"){
                    resultado = imc(peso!, altura!)
                    
                    switch resultado {
                    case 0...18.5:
                        cor = Color("BaixoPeso")
                        valor = "Baixo Peso"
                        break
                    case 18.5..<25:
                        cor = Color("Normal")
                        valor = "Normal"
                        break
                    case 25..<30:
                        cor = Color("Sobrepeso")
                        valor = "Sobrepeso"
                        break
                    case 30...:
                        cor = Color("Obesidade")
                        valor = "Obesidade"
                        break
                
                    default: break
                        
                    }
                }.padding().foregroundColor(.white).background(Color(.blue)).clipShape(Capsule())
                Spacer()
                
                Text("\(valor)").foregroundColor(.white).font(.title).bold()
                
                Spacer()
                
                
                Image("tabela-IMC")
                    .resizable()
                    .scaledToFit()
                    .scaleEffect(1.2)
                
                
            }
            
        }.background(cor)
    }
    
    
    
}




struct CalculoIMC_Previews: PreviewProvider {
    static var previews: some View {
        CalculoIMC()
    }
}
