//
//  User.swift
//  SpotifyClone
//
//  Created by Uday Gajera on 14/06/24.
//

import Foundation

struct UserArray: Codable {
    let users: [User]
    let total, skip, limit: Int
}

// MARK: - User
struct User: Codable, Identifiable {
    let id: Int
    let firstName, lastName: String
    let age: Int
    let email, phone, username, password: String
    let image: String
    let height, weight: Double
    
    static var mock: User {
        User(
            id: 1,
            firstName: "uday",
            lastName: "g",
            age: 22,
            email: "",
            phone: "",
            username: "",
            password: "",
            image: Constants.randomUrl,
            height: 22,
            weight: 22
        )
    }
}
