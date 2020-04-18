//
//  ContentView.swift
//  Draw_07
//
//  Created by Oscar Muñoz Rubalcava on 15/04/20.
//  Copyright © 2020 Oscar Muñoz Rubalcava. All rights reserved.
//

import SwiftUI
import CoreGraphics

struct ContentView: View {
    var body: some View {
        
        ZStack {
            
            /*
            Path{ path in
                path.move(to: CGPoint(x: 60, y: 130))
                path.addLine(to: CGPoint(x: 130, y: 60))
                path.addLine(to: CGPoint(x: 200, y: 130))
            }*/
            
            Text("Prueba")
                .font(.system(.largeTitle, design: .rounded))
                .frame(width: 200, height: 80)
                .background(FunnyLabel()
                    .foregroundColor(.blue))
            
            Path { path in
                path.move(to: CGPoint(x: 30, y: 130))
                path.addLine(to: CGPoint(x: 60, y: 130))
                path.addQuadCurve(to: CGPoint(x: 200, y: 130), control: CGPoint(x: 130, y: 60))
                path.addLine(to: CGPoint(x: 230, y: 130))
                path.addLine(to: CGPoint(x: 230, y: 250))
                path.addLine(to: CGPoint(x: 30, y: 250))
                path.closeSubpath()
                }
            .stroke(Color.red, lineWidth: 10)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct FunnyLabel: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        
        path.move(to: CGPoint(x: rect.size.width*0.1, y: 0))
        path.addQuadCurve(to: CGPoint(x: rect.size.width*0.9, y: 0), control: CGPoint(x: rect.size.width/2, y: -(rect.size.width*0.4)))
        path.addRect(CGRect(x: 0, y: 0, width: rect.size.width, height: rect.size.height))
        
        return path
    }
}
