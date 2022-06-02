//
//  GitHubAPI.swift
//  GitHubSearchRepository
//
//  Created by Itou Shingo on 2022/06/02.
//

import Foundation

final class GitHubAPI {
    struct SearchRepositories: GitHubRequest {
        var body: Encodable?
        
        let keyword: String
        
        // GitHubReqestが要求する連想型
        typealias Response = SearchResponse<Repository>
        
        var method: HTTPMethod {
            return .get
        }
        
        var path: String {
            return "/search/repositories"
        }
        
        var queryItems: [URLQueryItem] {
            return [URLQueryItem(name: "q", value: keyword)]
        }
    }
    
    struct SearchUsers: GitHubRequest {
        var body: Encodable?
        
        let keyword: String
        
        typealias Response = SearchResponse<User>
        
        var method: HTTPMethod {
            return .get
        }
        
        var path: String {
            return "/search/users"
        }
        
        var queryItems: [URLQueryItem] {
            return [URLQueryItem(name: "q", value: keyword)]
        }
    }
}
