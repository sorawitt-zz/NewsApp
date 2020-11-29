//
//  NewsResponse.swift
//  NewsApp
//
//  Created by sorawit on 29/11/2563 BE.
//

import Foundation

// MARK: - NewsResponse
struct NewsResponse: Codable {
    let status: String
    let totalResults: Int
    let articles: [ArticleResponse]
    
    // MARK: - ArticleResponse
    struct ArticleResponse: Codable {
        let source: Source
        let author, title, articleDescription: String
        let url: String
        let urlToImage: String
        let publishedAt: Date
        let content: String

        enum CodingKeys: String, CodingKey {
            case source, author, title
            case articleDescription = "description"
            case url, urlToImage, publishedAt, content
        }
        
        // MARK: - Source
        struct Source: Codable {
            let id, name: String
        }
    }
}
