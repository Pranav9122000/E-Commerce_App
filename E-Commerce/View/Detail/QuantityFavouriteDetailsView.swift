//
//  QuantityFavouriteDetailsView.swift
//  E-Commerce
//
//  Created by Kulkarni, Pranav on 21/01/24.
//

import SwiftUI

struct QuantityFavouriteDetailsView: View {
    
    @State private var counter: Int = 0
    
    var body: some View {
        HStack(alignment: .center, spacing: 6) {
            Button(action: {
                if (counter != 0) {
                    counter -= 1
                }
            }, label: {
                Image(systemName: "minus.circle")
            })
            
            Text("\(counter)")
                .fontWeight(.semibold)
                .frame(width: 36)
            
            Button(action: {
                if (counter < 100) {
                    counter += 1
                }
            }, label: {
                Image(systemName: "plus.circle")
            })
            
            Spacer()
            
            Button(action: {
                
            }, label: {
                Image(systemName: "heart.circle")
                    .foregroundStyle(.pink)
            })
        }
        .font(.system(.title, design: .rounded))
        .foregroundStyle(.black)
        .imageScale(.large)
    }
}

#Preview {
    QuantityFavouriteDetailsView()
}
