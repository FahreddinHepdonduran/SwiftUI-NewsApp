//
//  NewsResponse.swift
//  NewsApp
//
//  Created by fahreddin on 24.10.2022.
//

import Foundation

struct NewsResponse: Codable {
    let status: String
    let totalResults: Int
    let articles: [Article]
    
    enum CodingKeys: CodingKey {
        case status
        case totalResults
        case articles
    }
}

struct Article: Codable, Identifiable {
    let id = UUID()
    let source: Source
    let author: String
    let title: String
    let description: String
    let url: URL
    let urlToImage: URL
    let publishedAt: String
    let content: String
    
    enum CodingKeys: CodingKey {
        case source
        case author
        case title
        case description
        case url
        case urlToImage
        case publishedAt
        case content
    }
}

struct Source: Codable {
    let id: String?
    let name: String
    
    enum CodingKeys: CodingKey {
        case id
        case name
    }
}
