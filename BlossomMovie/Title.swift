//
//  Title.swift
//  BlossomMovie
//
//  Created by Locus Wong on 2026-02-15.
//

import Foundation

struct APIObject: Decodable {
    var results: [Title] = []
}
struct Title : Decodable, Identifiable{
    var id: Int?
    var title: String?
    var name: String?
    var overview: String?
    var posterPath: String?
}
