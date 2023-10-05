//
//  LibraryAlbumsResponse.swift
//  Spotify
//
//  Created by Dmitrii Dorogov on 28.09.2023.
//

import Foundation

struct LibraryAlbumsResponse: Codable {
    let items: [SavedAlbum]
}

struct SavedAlbum: Codable {
    let added_at: String
    let album: Album
}
