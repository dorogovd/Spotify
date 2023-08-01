//
//  SearchResult.swift
//  Spotify
//
//  Created by Dmitrii Dorogov on 01.08.2023.
//

import Foundation

enum SearchResult {
    case artist (model: Artist)
    case album (model: Album)
    case track (model: AudioTrack)
    case playlist (model: Playlist)
}
