//
//  BundleExtension.swift
//  Africa
//
//  Created by Hamza Azhar on 08/12/2021.
//

import Foundation

extension Bundle {
    func decode(_ file: String) -> [SliderModel] {
        //Locate the json file
        guard let url = self.url(forResource: file, withExtension: nil) else {
            fatalError("Failed to locate \(file) in bundle")
        }
        
        //create property for data
        guard let data = try? Data(contentsOf: url) else {
            fatalError("failed to load \(file) from bundle")
        }
        
        //create a decoder
        let decoder = JSONDecoder()
        
        //create proeprty for decoded data
        guard let decodedData = try? decoder.decode([SliderModel].self
                                                    , from: data) else {
            fatalError("Failed to decode data from \(file)")
        }
        
        return decodedData
    }
}
