//
//  DoughnutView.swift
//  Draw_07
//
//  Created by Oscar Muñoz Rubalcava on 17/04/20.
//  Copyright © 2020 Oscar Muñoz Rubalcava. All rights reserved.
//

import SwiftUI

struct DoughnutView: View {
    var body: some View {
        ZStack{
            Circle()
                .trim(from: 0, to: 0.3)
                .stroke(Color.red, lineWidth: 60)
            
            Circle()
                .trim(from: 0.3, to: 0.5)
                .stroke(Color.blue, lineWidth: 60)
            
            Circle()
                .trim(from: 0.75, to: 1)
                .stroke(Color.orange, lineWidth: 60)

            Circle()
                .trim(from: 0.5, to: 0.75)
                .stroke(Color.purple, lineWidth: 70)
                .shadow(color: .secondary, radius: 4, x: 28, y: 28)
        }
        .frame(width: 250, height: 250)
    }
}

struct DoughnutView_Previews: PreviewProvider {
    static var previews: some View {
        DoughnutView()
    }
}
