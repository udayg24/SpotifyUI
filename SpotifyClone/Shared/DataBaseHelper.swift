//
//  DataBaseHelper.swift
//  SpotifyClone
//
//  Created by Uday Gajera on 14/06/24.
//

import Foundation

struct DataBaseHelper {
    func getProducts() async throws -> [Product] {
        guard let url = URL(string: "https://dummyjson.com/products") else {
            throw URLError(.badURL)
        }
        
        let (data,_) = try await URLSession.shared.data(from: url)
        let product = try JSONDecoder().decode(ProductArray.self, from: data)
        return product.products
    }
    
    func getUsers() async throws -> [User] {
        guard let url = URL(string: "https://dummyjson.com/users") else {
            throw URLError(.badURL)
        }
        
        let (data,_) = try await URLSession.shared.data(from: url)
        let user = try JSONDecoder().decode(UserArray.self, from: data)
        return user.users
    }
}

