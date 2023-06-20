//
//  Artist.swift
//  Spotify
//
//  Created by Dmitrii Dorogov on 20.05.2023.
//

import Foundation

struct Artist: Codable {
    let id: String
    let name: String
    let type: String
    let external_urls: [String: String]
}
