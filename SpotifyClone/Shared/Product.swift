//
//  Product.swift
//  SpotifyClone
//
//  Created by Uday Gajera on 14/06/24.
//

import Foundation

struct ProductArray: Codable {
    let products: [Product]
    let total, skip, limit: Int
}

// MARK: - Product
struct Product: Codable, Identifiable {
    let id: Int
    let title, description: String
    let price, discountPercentage, rating: Double
    let stock: Int
    let brand: String?
    let images: [String]
    let thumbnail: String
    
    var firstImage: String {
        images.first ?? Constants.randomUrl
    }
    
    static var mock: Product {
        Product(
            id: 123,
            title: "example",
            description: "description",
            price: 123,
            discountPercentage: 2,
            rating: 3,
            stock: 4,
            brand: "brand",
            images: [Constants.randomUrl],
            thumbnail: Constants.randomUrl
        )
    }
}

struct ProductRow: Identifiable {
    let id = UUID().uuidString
    let title: String
    let products: [Product]
}
