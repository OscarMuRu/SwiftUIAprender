//
//  ContentView.swift
//  Calendario
//
//  Created by Oscar Muñoz Rubalcava on 08/04/20.
//  Copyright © 2020 Oscar Muñoz Rubalcava. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ScrollView{
            VStack {
                VStack {
                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack {
                            CardView(imageName: "cake", authorName: "Cumpleañero del día:", courseTitle: "Oscar Muñoz", originalPrice: "Deseale un muy feliz cumpleaños.")
                            
                            CardView(imageName: "cake", authorName: "Cumpleañero del día:", courseTitle: "Estebancito", originalPrice: "Deseale un muy feliz cumpleaños.")
                            
                            CardView(imageName: "cake", authorName: "Cumpleañero del día:", courseTitle: "Bob Dylan", originalPrice: "Deseale un muy feliz cumpleaños.")
                        }
                    }
                }
                VStack {
                    MonthView(month: "Enero")
                        .padding(.top, 50)
                        .padding(.bottom, 15)
                    
                    NameView(name: "Luis Ricardo")
                    NameView(name: "Luis Ricardo")
                    NameView(name: "Luis Ricardo")
                    NameView(name: "Luis Ricardo")
                    NameView(name: "Luis Ricardo")
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
