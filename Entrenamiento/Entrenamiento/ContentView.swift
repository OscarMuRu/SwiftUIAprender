//
//  ContentView.swift
//  Entrenamiento
//
//  Created by Oscar Muñoz Rubalcava on 04/04/20.
//  Copyright © 2020 Oscar Muñoz Rubalcava. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Rectangle()
            .foregroundColor(.pink)
            .edgesIgnoringSafeArea(.all)
            .opacity(0.78)
            .overlay(
                Text("Te amo Betty!!")
                    .fontWeight(.heavy).foregroundColor(.blue)
                    .font(.system(size: 99, design: .rounded))
                    .shadow(color: .orange, radius: 0.5, x: 5, y: 5)
                    .multilineTextAlignment(.leading)
                    .padding(),
                alignment: .top)
                    .overlay(
                        Image("Betty").resizable()
                            .clipShape(Rectangle())
                            .frame(width: 400, height: 500)
                            .cornerRadius(40)
                            .scaledToFill()
                            .padding(),
                        alignment: .bottom)
                            .overlay(
                                Image(systemName: "heart.fill")
                                    .foregroundColor(.red)
                                    .font(.system(size: 90))
                                    .opacity(0.75)
                                    .shadow(color: .black, radius: 1, x: 6, y: 6),
                                alignment: .bottom)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
