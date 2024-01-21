//
//  Shop.swift
//  E-Commerce
//
//  Created by Kulkarni, Pranav on 21/01/24.
//

import Foundation

class Shop: ObservableObject {
    @Published var showingProduct: Bool = false
    @Published var selectedProduct: ProductModel? = nil
}
