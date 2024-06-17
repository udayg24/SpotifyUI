//
//  SpotifyCloneApp.swift
//  SpotifyClone
//
//  Created by Uday Gajera on 14/06/24.
//

import SwiftUI
import SwiftfulRouting

@main
struct SpotifyCloneApp: App {
    var body: some Scene {
        WindowGroup {
            RouterView { _ in
                SpotifyHomeView()
            }
        }
    }
}
