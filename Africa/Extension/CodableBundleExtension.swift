//
//  CodableBundleExtension.swift
//  Africa
//
//  Created by eduardo vinoles on 4/1/24.
//

import Foundation

extension Bundle {
    func decode<T: Codable>(_ file: String) -> T {
        //locate json file
        guard let url = self.url(forResource: file, withExtension: nil) else {
            fatalError("Failed to locate \(file) in bundle.")
        }
        
        //create a property for the data
        guard let data = try? Data(contentsOf: url) else {
            fatalError("Failed to load \(file) from bundle.")
        }
        
        //create a decoder
        let decoder = JSONDecoder()
        
        //create a property for the decoded data
        guard let loaded = try? decoder.decode(T.self, from: data) else {
            fatalError("Failed to decode \(file) from bundle.")
        }
                
                
        //return the ready-to-use data
        return loaded
    }
}
