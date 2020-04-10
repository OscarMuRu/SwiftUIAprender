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
                HStack {
                    CardView(imageName: "cake", authorName: "Cumpleañero del día:", courseTitle: "Oscar Muñoz", originalPrice: "Deseale un muy feliz cumpleaños.")
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
