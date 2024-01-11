//
//  RMRequeat.swift
//  RickyNMorty
//
//  Created by Ali Fahim on 10/01/2024.
//

import Foundation

final class RMRequest {
    
    private struct Constant {
        static let baseUrl = "https://rickandmortyapi.com/api"
    }
    
    private let endPoint: RMEndPoint
    private let pathComponent: [String]
    private let queryParameters: [URLQueryItem]
    
    // Constructed url for the api request in string format
    private var urlString: String {
        var string = Constant.baseUrl
        string += "/"
        string += endPoint.rawValue
        
        if !pathComponent.isEmpty {
            pathComponent.forEach({
                string += "/\($0)"
            })
        }
        
        if !queryParameters.isEmpty {
            string += "?"
            let argumentString = queryParameters.compactMap({
                guard let value = $0.value else { return nil }
                return "\($0.name)=\(value)"
            }).joined(separator: "&")
            
            string += argumentString
        }
        
        return string
    }
    
    
    // Calling and return api string from here
    public var url: URL? {
        return URL(string: urlString)
    }
    
    public init(endPoint: RMEndPoint, pathComponents: [String], queryParameter: [URLQueryItem]) {
        self.endPoint = endPoint
        self.pathComponent = pathComponents
        self.queryParameters = queryParameter
    }
}
