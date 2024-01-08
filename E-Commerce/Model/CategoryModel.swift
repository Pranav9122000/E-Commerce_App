//
//  CategoryModel.swift
//  E-Commerce
//
//  Created by Kulkarni, Pranav on 08/01/24.
//

import Foundation

struct CategoryModel: Codable, Identifiable {
    let id: Int
    let name: String
    let image: String
}
