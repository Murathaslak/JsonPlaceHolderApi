//
//  APIURLs.swift
//  JsonPlaceHolderApi
//
//  Created by Osman Murat Haslak on 5.02.2025.
//

import Foundation

enum APIURLs {
    private static let baseURL = "https://jsonplaceholder.typicode.com"
    
    static func getUsers() -> String { return baseURL + "/users" }
    
}
