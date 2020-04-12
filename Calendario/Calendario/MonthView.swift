//
//  MonthView.swift
//  Calendario
//
//  Created by Oscar Muñoz Rubalcava on 12/04/20.
//  Copyright © 2020 Oscar Muñoz Rubalcava. All rights reserved.
//

import SwiftUI

struct MonthView: View {
    
    var month: String
    
    var body: some View {
        ZStack {
            Text(month)
                .fontWeight(.black)
                .font(.system(.largeTitle, design: .rounded))
            
            RoundedRectangle
                .init(cornerRadius: 12)
                .stroke(lineWidth: 2)
                .frame(width: 350, height: 40)
        }
    }
}

struct MonthView_Previews: PreviewProvider {
    static var previews: some View {
        MonthView(month: "Enero")
    }
}
