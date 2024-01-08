//
//  CodableBundleExtension.swift
//  E-Commerce
//
//  Created by Kulkarni, Pranav on 07/01/24.
//

import Foundation

extension Bundle {
    func decode<T: Codable>(_ file: String) -> T {
        guard let url = self.url(forResource: file, withExtension: nil) else {
            fatalError("Unable to locate \(file) in Bundle.")
        }
        
        guard let data = try? Data(contentsOf: url) else {
            fatalError("Unable to fetch data of \(file) in Bundle.")
        }
        
        let decoder = JSONDecoder()
        
        guard let decodedData = try? decoder.decode(T.self, from: data) else {
            fatalError("Unable to decode data from \(file) in Bundle.")
        }
        
        return decodedData
    }
}
