//
//  RMLocation.swift
//  RickyNMorty
//
//  Created by Ali Fahim on 08/01/2024.
//

import Foundation

struct RMLocation: Codable {
    let id: Int
    let name: String
    let type: String
    let dimension: String
    let resident: [String]
    let url: String
    let created: String
}
