//
//  RMService.swift
//  RickyNMorty
//
//  Created by Ali Fahim on 10/01/2024.
//

import Foundation

final class RMService {
    static let shared = RMService()
    
    private init() {}
    
    public func excute<T: Codable>(
        _ request: RMRequest,
        expecting type: T.Type,
        completion: @escaping (Result<String, Error>) -> Void) {
        
    }
}
