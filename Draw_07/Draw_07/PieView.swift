//
//  PieView.swift
//  Draw_07
//
//  Created by Oscar Muñoz Rubalcava on 16/04/20.
//  Copyright © 2020 Oscar Muñoz Rubalcava. All rights reserved.
//

import SwiftUI
import CoreGraphics

struct PieView: View {
    var body: some View {
        ZStack {
            Path() { path in
                path.move(to: CGPoint(x: 200, y: 250))
                path.addArc(center: CGPoint(x: 200, y: 250), radius: 160, startAngle: .degrees(0), endAngle: .degrees(200), clockwise: true)
            }.fill(Color.green)
            
            Path() { path in
                path.move(to: CGPoint(x: 200, y: 250))
                path.addArc(center: CGPoint(x: 200, y: 250), radius: 160, startAngle: .degrees(0), endAngle: .degrees(200), clockwise: true)
                path.closeSubpath()
            }.stroke(Color.blue, lineWidth: 6)
            
            Path() { path in
                path.move(to: CGPoint(x: 200, y: 250))
                path.addArc(center: CGPoint(x: 200, y: 250), radius: 160, startAngle: .degrees(200), endAngle: .degrees(160), clockwise: true)
            }.fill(Color.red)
                .offset(x: -30, y: 0)
            
            Path() { path in
                path.move(to: CGPoint(x: 200, y: 250))
                path.addArc(center: CGPoint(x: 200, y: 250), radius: 160, startAngle: .degrees(200), endAngle: .degrees(160), clockwise: true)
                path.closeSubpath()
            }.stroke(Color.purple, lineWidth: 6)
                .offset(x: -30, y: 0)
                .overlay(
                    Text("11.1%")
                        .font(.system(.largeTitle, design: .rounded))
                        .bold()
                        .foregroundColor(.white)
                        .offset(x: -135, y: -160))
            
            Path() { path in
                path.move(to: CGPoint(x: 200, y: 250))
                path.addArc(center: CGPoint(x: 200, y: 250), radius: 160, startAngle: .degrees(160), endAngle: .degrees(110), clockwise: true)
            }.fill(Color.blue)
            
            Path() { path in
                path.move(to: CGPoint(x: 200, y: 250))
                path.addArc(center: CGPoint(x: 200, y: 250), radius: 160, startAngle: .degrees(160), endAngle: .degrees(110), clockwise: true)
                path.closeSubpath()
            }.stroke(Color.green, lineWidth: 6)
            
            Path() { path in
                path.move(to: CGPoint(x: 200, y: 250))
                path.addArc(center: CGPoint(x: 200, y: 250), radius: 160, startAngle: .degrees(110), endAngle: .degrees(0), clockwise: true)
            }.fill(Color(.systemIndigo))
            
            Path() { path in
                path.move(to: CGPoint(x: 200, y: 250))
                path.addArc(center: CGPoint(x: 200, y: 250), radius: 160, startAngle: .degrees(110), endAngle: .degrees(0), clockwise: true)
                path.closeSubpath()
            }.stroke(Color.red, lineWidth: 6)
        }
    }
}

struct PieView_Previews: PreviewProvider {
    static var previews: some View {
        PieView()
    }
}
