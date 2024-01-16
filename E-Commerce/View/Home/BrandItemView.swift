//
//  BrandItemView.swift
//  E-Commerce
//
//  Created by Kulkarni, Pranav on 16/01/24.
//

import SwiftUI

struct BrandItemView: View {
    
    let brand: BrandModel
    
    var body: some View {
        Image(brand.image)
            .resizable()
            .scaledToFit()
            .padding(3)
            .background(Color.white.clipShape(RoundedRectangle(cornerRadius: 12)))
            .background(
                RoundedRectangle(cornerRadius: 12).stroke(Color.gray, lineWidth: 1)
            )
    }
}

#Preview {
    BrandItemView(brand: brands[0])
}
