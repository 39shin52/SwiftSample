//
//  GitHubAPIError.swift
//  GitHubSearchRepository
//
//  Created by Itou Shingo on 2022/06/02.
//

import Foundation

struct GitHubAPIError: Decodable, Error {
    struct FieldError: Decodable {
        let resource: String
        let field: String
        let code: String
    }
    
    let message: String
    let fieldErrors: [FieldError]
}
