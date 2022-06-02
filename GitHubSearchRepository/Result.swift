//
//  Result.swift
//  GitHubSearchRepository
//
//  Created by Itou Shingo on 2022/06/02.
//

import Foundation

enum Result<T, Error: Swift.Error> {
    case success(T)
    case failure(Error)
    
    init(value: T) {
        self = .success(value)
    }
    
    init(error: Error) {
        self = .failure(error)
    }
}
