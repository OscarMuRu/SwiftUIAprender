//
//  ProgressIndicator.swift
//  Draw_07
//
//  Created by Oscar Muñoz Rubalcava on 17/04/20.
//  Copyright © 2020 Oscar Muñoz Rubalcava. All rights reserved.
//

import SwiftUI

struct ProgressIndicator: View {
    private var trackColor = LinearGradient(gradient: Gradient(colors: [.red, .orange]), startPoint: .leading, endPoint: .trailing)
    var body: some View {
        ZStack{
            
            Circle()
                .stroke(Color(.systemGray5), lineWidth: 10)
                .frame(width: 200, height: 200)
            
            Circle()
                .trim(from: 0, to: 0.65)
                .stroke(trackColor, lineWidth: 10)
                .frame(width: 200, height: 200)
                .overlay(VStack{
                    Image(systemName: "gamecontroller.fill")
                        .font(.system(.largeTitle, design: .rounded))
                        .foregroundColor(.orange)
                    Text("5,000")
                        .font(.system(.largeTitle, design: .rounded))
                        .bold()
                    Text("Hours Played").font(.system(.title, design: .rounded)).foregroundColor(.secondary)
                })
            
        }
    }
}

struct ProgressIndicator_Previews: PreviewProvider {
    static var previews: some View {
        ProgressIndicator()
    }
}
