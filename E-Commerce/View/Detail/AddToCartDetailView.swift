//
//  AddToCartDetailView.swift
//  E-Commerce
//
//  Created by Kulkarni, Pranav on 21/01/24.
//

import SwiftUI

struct AddToCartDetailView: View {
    
    @EnvironmentObject var shop: Shop
    
    var body: some View {
        Button(action: {
            
        }, label: {
            Spacer()
            Text("Add to Cart".uppercased())
                .font(.system(.title2, design: .rounded))
                .bold()
                .foregroundStyle(.white)
            Spacer()
        })
        .padding(15)
        .background(
            Color(
                red: shop.selectedProduct?.red ?? sampleProduct.red,
                green: shop.selectedProduct?.green ?? sampleProduct.green,
                blue: shop.selectedProduct?.blue ?? sampleProduct.blue)
        )
        .clipShape(Capsule())
    }
}

#Preview {
    AddToCartDetailView()
}
