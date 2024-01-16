//
//  ProductDetailView.swift
//  E-Commerce
//
//  Created by Kulkarni, Pranav on 16/01/24.
//

import SwiftUI

struct ProductDetailView: View {
    var body: some View {
        ZStack {
            Color(
                red: sampleProduct.red,
                green: sampleProduct.green,
                blue: sampleProduct.blue
            ).ignoresSafeArea()
            
            VStack(alignment: .leading, spacing: 20) {
                NavigationBarDetailView()
                    .padding(.horizontal)
                
                HeaderDetailView()
                    .padding(.horizontal)
                
                TopPartDetailView()
                    .padding(.horizontal)
                
                Spacer()
            }
        }
    }
}

#Preview {
    ProductDetailView()
}
