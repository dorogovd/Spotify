//
//  PlaybackPresenter.swift
//  Spotify
//
//  Created by Dmitrii Dorogov on 02.08.2023.
//

import Foundation
import UIKit

final class PlaybackPresenter {
    static let shared = PlaybackPresenter()
    
    func startPlayback(
        from viewController: UIViewController,
        track: AudioTrack
    ) {
        let vc = PlayerViewController()
        vc.title = track.name
        viewController.present(UINavigationController(rootViewController: vc), animated: true,completion: nil)
    }
    
    func startPlayback(
        from viewController: UIViewController,
        tracks: [AudioTrack]
    ) {
        let vc = PlayerViewController()
        viewController.present(UINavigationController(rootViewController: vc), animated: true,completion: nil)
    }
}
