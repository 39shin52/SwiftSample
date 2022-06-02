//
//  GitHubCilentError.swift
//  GitHubSearchRepository
//
//  Created by Itou Shingo on 2022/06/01.
//

import Foundation

enum GitHubClientError: Error {
    // 通信に失敗
    case connectionError(Error)
    
    // レスポンスの解釈に失敗
    case responseParseError(Error)
    
    // APIからエラーレスポンスを受け取った
    case apiError(GitHubAPIError)
}
