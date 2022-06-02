//
//  SearchResponse.swift
//  GitHubSearchRepository
//
//  Created by Itou Shingo on 2022/06/01.
//

import Foundation

struct SearchResponse<Item: Decodable>: Decodable {
    let totalCount: Int
    let items: [Item]
    
    enum CodingKeys: String, CodingKey {
        case totalCount = "total_count"
        case items
    }
}
