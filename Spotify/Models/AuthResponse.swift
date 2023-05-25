//
//  AuthResponse.swift
//  Spotify
//
//  Created by Dmitrii Dorogov on 24.05.2023.
//

import Foundation

struct AuthResponse: Codable {
    let access_token: String
    let expires_in: Int
    let refresh_token: String?
    let scope: String
}
