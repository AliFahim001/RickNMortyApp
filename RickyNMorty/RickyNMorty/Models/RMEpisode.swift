//
//  RMEpisode.swift
//  RickyNMorty
//
//  Created by Ali Fahim on 08/01/2024.
//

import Foundation

struct RMEpisode: Codable {
    let id: Int
    let name: String
    let air_date: String
    let episode: String
    let character: [String]
    let url: String
    let created: String
}
