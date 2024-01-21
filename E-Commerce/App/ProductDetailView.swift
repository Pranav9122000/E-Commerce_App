//
//  ProductDetailView.swift
//  E-Commerce
//
//  Created by Kulkarni, Pranav on 16/01/24.
//

import SwiftUI

struct ProductDetailView: View {
    
    @EnvironmentObject var shop: Shop
    
    var body: some View {
        ZStack {
            Color(
                red: shop.selectedProduct?.red ?? sampleProduct.red,
                green: shop.selectedProduct?.green ?? sampleProduct.green,
                blue: shop.selectedProduct?.blue ?? sampleProduct.blue
            ).ignoresSafeArea(.all, edges: .all)
            
            VStack(alignment: .leading, spacing: 20) {
                NavigationBarDetailView()
                    .padding(.horizontal)
                
                HeaderDetailView()
                    .padding(.horizontal)
                
                TopPartDetailView()
                    .padding(.horizontal)
                    .zIndex(1)
                
                VStack(alignment: .leading, spacing: 0) {
                    
                    RatingsView()
                        .padding(.top, -20)
                        .padding(.bottom, 10)
                    
                   
                    ScrollView(showsIndicators: false) {
                        Text(shop.selectedProduct?.description ?? sampleProduct.description)
                            .font(.system(.body, design: .rounded))
                            .foregroundStyle(.gray)
                            .multilineTextAlignment(.leading)
                    }
                    
                    QuantityFavouriteDetailsView()
                        .padding(.vertical, 10)
                    
                    AddToCartDetailView()
                        .padding(.bottom, -10)
                }
                .zIndex(0)
                .padding(.horizontal)
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .background(
                    Color.white
                        .clipShape(CustomShape())
                        .padding(.top, -105)
                        .padding(.bottom, -40))
                
                
                
            }
        }
    }
}

#Preview {
    ProductDetailView()
        .environmentObject(Shop())
}
