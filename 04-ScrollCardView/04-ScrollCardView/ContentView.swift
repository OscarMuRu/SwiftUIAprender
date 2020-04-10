//
//  ContentView.swift
//  04-ScrollCardView
//
//  Created by Oscar Muñoz Rubalcava on 07/04/20.
//  Copyright © 2020 Oscar Muñoz Rubalcava. All riwghts reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        VStack {
            Image("udemy-logo")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 350)
                .padding(.horizontal)
            ScrollView {
                VStack {
                    
                    Text("Juan Gabriel Gomila")
                        .font(.system(.largeTitle, design: .rounded))
                        .fontWeight(.black)
                        .foregroundColor(.primary)
                    
                    Text("Profesor Universitario, UCI, Data Scientist & Game Designer")
                        .fontWeight(.bold)
                        .font(.system(.caption, design: .rounded))
                    
                    Text("139.245 estudiantes en total - 59 cursos - 23.525 reseñas")
                        .fontWeight(.bold)
                        .font(.system(.caption, design: .rounded))
                        .foregroundColor(.secondary)
                    
                    HScroll()
                    HScroll()
                    
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

struct HScroll: View {
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false){
            
            HStack{
                CardView(imageName: "build", authorName: "Juan Gabriel Gomila", courseTitle: "Diseño de apps para ios 13 con Swift UI desde cero", originalPrice: "$199.99", discountPrice: "$10.99")
                    .frame(width: 300)
                
                CardView(imageName: "iphone", authorName: "Oscar Muñoz Rubalcava", courseTitle: "Curso de IOS 9 desde cero", originalPrice: "$199.99", discountPrice: "$10.99")
                    .frame(width: 300)
                
                CardView(imageName: "machine", authorName: "Juan Gabriel Gomila", courseTitle: "Aprende a volar desde cero", originalPrice: "$199.99", discountPrice: "$10.99")
                    .frame(width: 300)
                
                CardView(imageName: "python", authorName: "Juan Gabriel Gomila", courseTitle: "Descubre el lenguaje python desde cero", originalPrice: "$199.99", discountPrice: "$10.99")
                    .frame(width: 300)
            }
            Spacer()
        }
    }
}
