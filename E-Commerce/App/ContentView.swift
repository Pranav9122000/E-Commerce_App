//
//  ContentView.swift
//  E-Commerce
//
//  Created by Kulkarni, Pranav on 05/01/24.
//

import SwiftUI

struct ContentView: View {
    
    @EnvironmentObject var shop: Shop
    
    var body: some View {
        
        if shop.showingProduct == false && shop.selectedProduct == nil {
            VStack {
                NavigationBarView()
                    .padding(.horizontal, 15)
                    .padding(.bottom)
                    .padding(.top, UIApplication.shared.connectedScenes.first?.inputView?.safeAreaInsets.top)
                    .background(.white)
                    .shadow(color: .black.opacity(0.2), radius: 5, x: 0, y: 5)
                
                ScrollView {
                    VStack(spacing: 0) {
                        FeatureTabView()
                            .frame(height: UIScreen.main.bounds.width / 1.475)
                            .padding(.vertical, 20)
                        
                        CategoryGridView()
                        
                        TitleView(title: "Helmets")
                        
                        LazyVGrid(columns: gridLayout, spacing: 10, content: {
                            ForEach(products) { product in
                                ProductItemView(product: product)
                                    .onTapGesture {
                                        withAnimation(.easeOut) {
                                            shop.selectedProduct = product
                                            shop.showingProduct = true
                                        }
                                    }
                            }
                        })
                        .padding(15)
                        
                        TitleView(title: "Brands")
                        
                        BrandGridView()
                        
                        FooterView()
                            .padding()
                    }
                }
                .scrollIndicators(.hidden)
                
                
            }
            .background(colorBackground.ignoresSafeArea(.all, edges: .all))
        } else {
            ProductDetailView()
        }
    }
}

#Preview {
    ContentView()
        .environmentObject(Shop())
}
