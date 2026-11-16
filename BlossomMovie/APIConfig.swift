//
//  APIConfig.swift
//  BlossomMovie
//
//  Created by Locus Wong on 2026-11-16.
//

// used for reading and accessing the contents of the JSON file. This dynamically load sensitive information like our API keys into our app at runtime
import Foundation

struct APIConfig : Decodable {
    let tmdbBaseURL: String
    let tmdbAPIKey: String
    
    static let shared: APIConfig = { // Singleton Pattern
        guard let url = Bundle.main.url(forResource: "APIConfig", withExtension: "json") else{
            fatalError("APIConfig.json is missing or invalid")
        }
        
        do{
            let data = try Data(contentsOf: url)
            return try JSONDecoder().decode(APIConfig.self, from: data)
        } catch {
            fatalError("Failed to load or decode APIConfig.json: \(error)")
        }
    }()
}
