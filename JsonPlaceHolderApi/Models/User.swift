//
//  User.swift
//  JsonPlaceHolderApi
//
//  Created by Osman Murat Haslak on 5.02.2025.
//

import Foundation

// MARK: - UserElement
struct UserElement: Decodable {
    let id: Int
    let name, userName, email: String
    let address: Address
    let phone, webSite: String
    let company: Company
    
    enum CodingKeys: String, CodingKey {
        case id, name
        case userName = "username"
        case email, address, phone
        case webSite = "website"
        case company
    }
}

// MARK: - Address
struct Address: Decodable {
    let street, suite, city, zipCode: String
    let geo: Geo
    
    enum CodingKeys: String, CodingKey {
        case street, suite, city
        case zipCode = "zipcode"
        case geo
    }
    
}

// MARK: - Geo
struct Geo: Decodable {
    let lat, lng: String
}

// MARK: - Company
struct Company: Decodable {
    let name, catchPhrase, bs: String
}
