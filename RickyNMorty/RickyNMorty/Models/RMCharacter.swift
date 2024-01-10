//
//  RMCharacter.swift
//  RickyNMorty
//
//  Created by Ali Fahim on 08/01/2024.
//

import Foundation

struct RMCharacter: Codable {
    let id: Int
    let name: String
    let status: RMCharacterStatus
    let type: String
    let gender: RMCharacterGender
    let origin: RMOrigin
    let location: RMSingleLocation
    let image: String
    let episodes: [String]
    let url: String
    let created: String
}
