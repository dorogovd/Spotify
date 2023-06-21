//
//  RecommendationsResponse.swift
//  Spotify
//
//  Created by Dmitrii Dorogov on 21.06.2023.
//

import Foundation

struct RecommendationsResponse: Codable {
    let tracks: [AudioTrack]
    
}
