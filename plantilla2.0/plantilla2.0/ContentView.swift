//
//  ContentView.swift
//  plantillas
//
//  Created by Oscar Muñoz Rubalcava on 07/04/20.
//  Copyright © 2020 Oscar Muñoz Rubalcava. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Image("teatro")
                .resizable()
                .edgesIgnoringSafeArea(.all)
                .opacity(0.8)
            VStack {
                TitleView()
                Rectangle()
                    .opacity(0.7)
                    .overlay(
                        ZStack {
                            Image("moto")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 350, height: 230)
                                .clipped()
                                .cornerRadius(20)
                            
                            Text("Lo más visto")
                                .fontWeight(.bold)
                                .foregroundColor(.white)
                                .font(.system(.headline, design: .rounded))
                                .frame(width: 345)
                                .padding(3)
                                .background(Color.black)
                                .cornerRadius(10)
                                .offset(x: 0, y: -130)
                                
                            
                            MovieView(icon: "arrow.right.circle", iconColor: .white, iconSize: 30, iconPosX: 190, iconPosY: 0)
                            MovieView(icon: "arrow.left.circle", iconColor: .white, iconSize: 30, iconPosX: -190, iconPosY: 0)
                            MovieView(icon: "play.rectangle.fill", iconColor: .red, iconSize: 41, iconPosX: 0, iconPosY: 0)
                            MovieView(icon: "play.rectangle", iconColor: .white, iconSize: 40, iconPosX: 0, iconPosY: 0)
                    
                    })
                HStack{
                    NetView(textColor: .white, title: "Home", backgroundColor: .black, icon: "house")
                    NetView(textColor: .white, title: "Literature", backgroundColor: .blue, icon: "pencil")
                }
                HStack{
                    NetView(textColor: .white, title: "Wildlife", backgroundColor: .green, icon: "tortoise")
                    NetView(textColor: .white, title: "Economy", backgroundColor: .purple, icon: "dollarsign.circle")
                }
                HStack{
                    NetView(textColor: .white, title: "Streaming", backgroundColor: .red, icon: "gamecontroller")
                    NetView(textColor: .white, title: "Book based", backgroundColor: .orange, icon: "book")
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

struct NetView: View {
    
    var textColor: Color
    var title: String
    var backgroundColor: Color
    var icon: String
    
    var body: some View {
        VStack {
            ZStack {
                Text(title)
                    .font(.system(.subheadline, design: .rounded))
                    .fontWeight(.bold)
                    .foregroundColor(textColor)
                    .frame(width: 150, height: 100, alignment: .bottom)
                    .padding()
                    .background(backgroundColor)
                    .cornerRadius(10)
                
                Image(systemName: icon)
                    .foregroundColor(textColor)
                    .font(.system(size: 45, design: .rounded))
                    .offset(x: 0, y: -5)
            }.padding(.leastNormalMagnitude)
        }
    }
}

struct TitleView: View {
    var body: some View {
        HStack {
            VStack {
                HStack {
                    Text("Elige la pelicula")
                        .font(.system(.largeTitle, design: .rounded))
                        .fontWeight(.black)
                        .background(Color.yellow).cornerRadius(10)
                    
                    Spacer()
                }
            
                Text("que quieras ver")
                    .font(.system(.largeTitle, design: .rounded))
                    .fontWeight(.black)
                    .background(Color.yellow).cornerRadius(10)
            }
            .padding(.leading)
            Spacer()
        }
    }
}

struct MovieView: View {
    
    var icon: String
    var iconColor: Color
    var iconSize: CGFloat
    var iconPosX: CGFloat
    var iconPosY: CGFloat
    
    var body: some View {
        Image(systemName: icon)
            .font(.system(size: iconSize))
            .foregroundColor(iconColor)
            .offset(x: iconPosX, y: iconPosY)
    }
}

