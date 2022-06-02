//
//  Repository.swift
//  GitHubSearchRepository
//
//  Created by Itou Shingo on 2022/06/01.
//

import Foundation

struct Repository: Decodable {
    let id: Int
    let name: String
    let fullName: String
    let owner: User
    
    enum CodingKeys: String, CodingKey {
        case id
        case name
        case fullName = "full_name"
        case owner
    }
}
