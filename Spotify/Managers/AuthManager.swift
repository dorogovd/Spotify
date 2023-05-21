//
//  AuthManager.swift
//  Spotify
//
//  Created by Dmitrii Dorogov on 20.05.2023.
//

import Foundation

final class AuthManager { // аутентификация пользователя
    static let shared = AuthManager()
    
    struct Constants {
        static let clientID = ""
        static let clientSecret = ""
    }
    
    private init() {}
    
    public var signInURL: URL? {
        let scopes = "user-read-private"
        let redirectURI = "https://www.redeyerecords.co.uk"
        let base = "https://accounts.spotify.com/authorize"
        let string = "\(base)?response_type=code&client_id=\(Constants.clientID)&scope=\(scopes)&redirect_uri=\(redirectURI)&show_dialog=TRUE"
        return URL(string: string)
    }
    
    var isSignedIn: Bool {
        return false
    }
    
    private var accessToken: String? { // получение токена от пользователя
        return nil
    }
    
    private var refreshToken: String? { // обновление токена, т.к. он истекает
        return nil
    }
    
    private var tokenExpirationDate: Date? { // дата истечения срока токена
        return nil
    }
    
    private var shouldRefreshToken: Bool {
        return false
    }
    
    public func exchangeCodeForToken(
        code: String,
        completion: @escaping ((Bool) -> Void)
    ) {
        // Get Token
    }
    
    public func refreshAccessToken() {
        
    }
    
    private func cacheToken() {
        
    }
}
