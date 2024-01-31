//
//  Wallpaper.swift
//  WallpaperApp
//
//  Created by Pavel Gribachev on 31.01.2024.
//

import Foundation

struct Data: Decodable{
    let id: String
    let url: String
    let short_url: String
    let uploader: Uploader
}

struct Uploader: Decodable {
    let username: String
    let group: String
    let avatar: [String: String]
}

struct Thumbs: Decodable {
    let large: String
    let original: String
    let small: String
}

struct Category: Decodable {
    let id: Int
    let name: String
    let alias: String
    let category_id: Int
    let category: String
    let purity: String
    let created_at: String
}

struct Wallpaper: Decodable {
    let data: Data
    let views: Int
    let favorites: Int
    let source: String?
    let purity: String
    let category: String
    let dimension_x: Int
    let dimension_y: Int
    let resolution: String
    let ratio: String
    let file_size: Int
    let created_at: String
    
    let colors: [String]
    let path: String
    let thumbs: Thumbs
    let tags: [Category]
}
