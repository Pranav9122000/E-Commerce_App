//
//  ProductItemView.swift
//  E-Commerce
//
//  Created by Kulkarni, Pranav on 08/01/24.
//

import SwiftUI

struct ProductItemView: View {
    
    let product: ProductModel
    
    var body: some View {
        VStack(alignment: .leading, spacing: 6) {
            ZStack {
                Image(product.image)
                    .resizable()
                    .scaledToFit()
                    .padding(10)
            }
            .background(Color(red: product.red, green: product.green, blue: product.blue))
            .clipShape(RoundedRectangle(cornerRadius: 12))
            
            Text(product.name)
                .font(.title3)
                .fontWeight(.black)
            
            Text(product.formattedPrice)
                .fontWeight(.semibold)
                .foregroundStyle(.gray)
        }
    }
}

#Preview {
    ProductItemView(product: products[0])
}
