//
//  WallpaperUnsplash.swift
//  WallpaperApp
//
//  Created by Pavel Gribachev on 31.01.2024.
//

import Foundation

struct WallpaperUnsplash {
    let id: String
    let created_at: String
    let updated_at: String
    let width: Int
    let height: Int
    let color: String
    let likes: Int
    
    let user: User
}

struct User {
    let id: String
    let updated_at: String
    let username: String
    let name: String
    let first_name: String
    let last_name: String
    let twitter_username: String
    let portfolio_url: String
    let bio: String
    let location: String
    
    
}

struct Links {
    
}
