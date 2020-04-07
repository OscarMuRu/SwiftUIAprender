//
//  ContentView.swift
//  images_02
//
//  Created by Oscar Muñoz Rubalcava on 03/04/20.
//  Copyright © 2020 Oscar Muñoz Rubalcava. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Image("pink")
            .resizable()
            .aspectRatio(contentMode: .fill)
            .frame(width: 300, height: 800)
            .opacity(0.7)
            //.clipped()
            //.scaledToFit()
            .edgesIgnoringSafeArea(.bottom)
            .overlay(
                Capsule()
                    .foregroundColor(.gray)
                    .opacity(0.5)
                        .overlay(Text("Cosa Rosa")
                            .foregroundColor(.white)
                            .fontWeight(.bold).font(.system(size: 40, design: .rounded))
                            .frame(width: 300, height: 150))
                /*Text("No se que sea esta imagen pero está chida, esa es la razón por la que la subí. Si no les gusta tapense los ojos.")
                    .fontWeight(.bold)
                    .font(.system(size: 30, design: .rounded))
                    .foregroundColor(.white)
                    .padding()
                    .multilineTextAlignment(.leading)
                    .background(Color.black)
                    .padding()
                    .cornerRadius(100)
                    .opacity(0.7),
                alignment: .bottomLeading*/)
            /*.overlay(
                Image(systemName: "ant")
                    .font(.system(size: 80))
                    .shadow(color: .red, radius: 0, x: 3, y: 2)
                    .shadow(color: .blue, radius: 3, x: 4, y: 5)
                    .opacity(0.5))*/
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
