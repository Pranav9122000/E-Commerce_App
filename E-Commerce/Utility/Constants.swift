//
//  Constants.swift
//  E-Commerce
//
//  Created by Kulkarni, Pranav on 05/01/24.
//

import Foundation
import SwiftUI

// COLOR
let colorBackground: Color = Color("ColorBackground")
let colorGrey: Color = Color(UIColor.systemGray4)

// DATA
let players: [PlayerModel] = Bundle.main.decode("player.json")
let category: [CategoryModel] = Bundle.main.decode("category.json")
let products: [ProductModel] = Bundle.main.decode("product.json")

// LAYOUT
let columnSpacing: CGFloat = 10
let rowSpacing: CGFloat = 10
var gridLayout: [GridItem] {
    return Array(repeating: GridItem(.flexible(), spacing: rowSpacing), count: 2)
}
