//
//  APIConfig.swift
//  The News App
//
//  Created by Karim Cordilia on 21/03/2023.
//

import Foundation

struct APIConfig {
    static let baseURL = URL(string: "https://api.thenewsapi.com/v1/news/")
    static let apiKey = "qYV9kNsWLHaT7VvrMh6aKRNJ8IB2J9AGrmGngnEM"
    static let language = "nl"
}

enum HttpHeaders: String {
    case apiToken = "api_token"
    case language = "language"
}

enum Endpoints: String {
    case all = "all"
    case top = "top"
    case similar = "similar"
}
