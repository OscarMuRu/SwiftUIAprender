//
//  ContentView.swift
//  Buttons_05
//
//  Created by Oscar Muñoz Rubalcava on 09/04/20.
//  Copyright © 2020 Oscar Muñoz Rubalcava. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        VStack {
            Button(action: {
                print("Botón hola pulsado!!!")
            }) {
                Text("Hola mundo")
                    .font(.largeTitle)
                    .fontWeight(.black)
                    
                    .padding()
                    .background(Color.green)
                    .foregroundColor(.white)
                    .cornerRadius(50)
                
                    .padding(12)
                    .overlay(
                        RoundedRectangle(cornerRadius: 50)
                            .stroke(Color.green, lineWidth: 5))
            }
            
            Button(action:{
                print("Botón pulsado")
            }){
                HStack{
                    Image(systemName: "trash")
                    
                    Text("Eliminar")
                        .fontWeight(.bold)
                }
            }
            .buttonStyle(BasicButtonStyle())
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct BasicButtonStyle: ButtonStyle{
    func makeBody(configuration: Self.Configuration) -> some View {
        configuration.label
            .frame(minWidth: 0, maxWidth: .infinity)
            .padding()
            .background(LinearGradient(gradient: Gradient(colors: [Color.pink, Color("Ocean")]), startPoint: .top, endPoint: .bottom))
            .font(.largeTitle)
            .foregroundColor(.white)
            .cornerRadius(45)
            .shadow(radius: 10.0)
            .padding(.horizontal, 15)
            .scaleEffect(configuration.isPressed ? 0.8 : 1.0)
    }
}
