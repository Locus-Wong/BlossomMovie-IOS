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
    
    static let shared: APIConfig? = { // Singleton Pattern
        do{
            return try loadConfig()
        } catch {
            print("Failed to load API config: \(error.localizedDescription)")
            return nil
        }
    }()
    
    private static func loadConfig() throws -> APIConfig{
        guard let url = Bundle.main.url(forResource: "APIConfig", withExtension: "json") else{
            throw APIConfigError.fileNotFound
        }
        
        do{
            let data = try Data(contentsOf: url)
            return try JSONDecoder().decode(APIConfig.self, from: data)
        } catch let error as DecodingError {
            throw APIConfigError.decodingFailed(underlyingError: error)
        } catch {
            throw APIConfigError.dataLoadingFailed(underlyingError: error)
        }
    }
}
