//
//  ContentView.swift
//  Excercice
//
//  Created by Oscar Muñoz Rubalcava on 06/04/20.
//  Copyright © 2020 Oscar Muñoz Rubalcava. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        ZStack {
            Image("astronomy")
                .resizable()
                .edgesIgnoringSafeArea(.all)
            VStack {
                HeaderView()
            
                ZStack {
                    PricingView(title: "Básico", price: "$9.99", subTitle: "Un curso incluido", textColor: .white, backgroundColor: .green, icon: "star")
                    
                    ZStack {
                        PricingView(title: "Carrera", price: "$29.99", subTitle: "Toda una carrera", textColor: .black, backgroundColor: Color(red: 220/255, green: 220/255, blue: 220/255), icon: "timer") 
                            .offset(x: 0, y: 100)
                        
                        Text("El mejor para empezar")
                            .font(.system(.caption, design: .rounded))
                            .fontWeight(.black)
                            .foregroundColor(.white)
                            .padding(5)
                            .background(Color(red: 240/255, green: 180/255, blue: 40/255))
                            .cornerRadius(7)
                            .offset(x: 0, y: 11)
                    }
                    
                    ZStack {
                        PricingView(title: "Definitivo", price: "$99.99", subTitle: "Todos los cursos online", textColor: .white, backgroundColor: Color(red: 55/255, green: 55/255, blue: 55/255), icon: "lightbulb")
                            .offset(x: 0, y: 200)
                        
                        Text("Conviertete en el amo del universo")
                        .font(.system(.caption, design: .rounded))
                        .fontWeight(.black)
                        .foregroundColor(.white)
                        .padding(5)
                        .background(Color(red: 240/255, green: 180/255, blue: 40/255))
                        .cornerRadius(7)
                        .offset(x: 0, y: 110)
                    }
                }
                Spacer()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct HeaderView: View {
    var body: some View {
        
        HStack {
            VStack(alignment: .leading){
                Text("Elige tu itinerario")
                    .fontWeight(.black)
                    .foregroundColor(.white)
                    .font(.system(.largeTitle, design: .rounded))
                
                Text("de aprendizaje")
                    .fontWeight(.black)
                    .foregroundColor(.white)
                    .font(.system(.largeTitle, design: .rounded))
            }
            Spacer()
        }
        .padding(.all)
    }
}

struct PricingView: View {
    
    var title: String
    var price: String
    var subTitle: String
    var textColor: Color
    var backgroundColor: Color
    var icon: String
    
    var body: some View {
        VStack {
            Image(systemName: icon)
                .font(.system(size: 35, design: .rounded))
                .foregroundColor(textColor)
            
            Text(title)
                .fontWeight(.bold)
                .font(.system(.title, design: .rounded))
                .foregroundColor(textColor)
            
            Text(price)
                .fontWeight(.black)
                .font(.system(.largeTitle, design: .rounded))
                .foregroundColor(textColor)
            
            Text(subTitle)
                .font(.system(.headline))
                .foregroundColor(textColor)
        }
        .padding(30)
        .frame(minWidth: 200, maxWidth: 380)
        .background(backgroundColor)
        .cornerRadius(25)
    }
}
