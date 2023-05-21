//
//  AuthViewController.swift
//  Spotify
//
//  Created by Dmitrii Dorogov on 20.05.2023.
//

import UIKit
import WebKit

class AuthViewController: UIViewController, WKNavigationDelegate { // контроллер для загрузки страницы аутентификации
    
    private let webView: WKWebView = {
        let prefs = WKWebpagePreferences()
        prefs.allowsContentJavaScript = true // разрешение на выполнение кода javascript
        let config = WKWebViewConfiguration()
        config.defaultWebpagePreferences = prefs
        let webView = WKWebView(frame: .zero, configuration: config)
        return webView
    }()
    
    public var completionHandler: ((Bool) -> Void)? // do something когда что-то закончится ... реализация этой хуйни будет где-то в другом классе (поэтому оно публик)

    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Sign in"
        view.backgroundColor = .systemBackground
        webView.navigationDelegate = self
        view.addSubview(webView)
        guard let url = AuthManager.shared.signInURL else {
            return
        }
        webView.load(URLRequest(url: url))
    }
 
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        webView.frame = view.bounds
    }
    
    func webView(_ webView: WKWebView, didStartProvisionalNavigation navigation: WKNavigation!) {
        guard let url = webView.url else {
            return
        }
        // Exchange the code for access token
        guard let code = URLComponents(string: url.absoluteString)?
            .queryItems?
            .first(where: { $0.name == "code" })?
            .value
        else { return }
        print("Code: \(code)")
    }
}
