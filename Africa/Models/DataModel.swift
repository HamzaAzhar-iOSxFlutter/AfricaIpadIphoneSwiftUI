//
//  DataModel.swift
//  Africa
//
//  Created by Hamza Azhar on 08/12/2021.
//

import Foundation

struct AnimalModel: Codable, Identifiable {
    let id: String
    let name: String
    let headline: String
    let description: String
    let link: String
    let image: String
    let gallery: [String]
    let fact: [String]
}

struct SliderModel: Codable, Identifiable {
    let id: Int
    let name: String
}
