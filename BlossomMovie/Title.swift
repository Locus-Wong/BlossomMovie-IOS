//
//  Title.swift
//  BlossomMovie
//
//  Created by Locus Wong on 2026-02-15.
//

import Foundation

struct APIObject: Decodable {
    var results: [Title] = [] // Instead of listing results as an optional, we set it as an empty array
}
struct Title : Decodable, Identifiable{
    var id: Int?
    var title: String? // title is used with movie
    var name: String? // name is used with tv
    var overview: String?
    var posterPath: String?
}
