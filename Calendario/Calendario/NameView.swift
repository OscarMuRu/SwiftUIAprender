//
//  NameView.swift
//  Calendario
//
//  Created by Oscar Muñoz Rubalcava on 12/04/20.
//  Copyright © 2020 Oscar Muñoz Rubalcava. All rights reserved.
//

import SwiftUI

struct NameView: View {
    
    var name: String
    
    var body: some View {
        ZStack {
            HStack {
                Text("12")
                
                Text(name.uppercased())
                    .fontWeight(.semibold)
                    .font(.system(.body, design: .rounded))
            }
            
            RoundedRectangle
                .init(cornerRadius: 15)
                .stroke(Color.secondary, lineWidth: 1)
                .frame(width: 200, height: 40)
        }
         
    }
}

struct NameView_Previews: PreviewProvider {
    static var previews: some View {
        NameView(name: "Luis Ricardo")
    }
}
