//
//  AllCategoriesResponse.swift
//  Spotify
//
//  Created by Dmitrii Dorogov on 12.07.2023.
//

import Foundation

struct AllCategoriesResponse: Codable {
    let categories: Categories
}

struct Categories: Codable {
    let items: [Category]
}

struct Category: Codable {
    let id: String
    let name: String
    let icons: [APIImage]
}
