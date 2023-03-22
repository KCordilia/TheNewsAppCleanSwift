//
//  NetworkError.swift
//  The News App
//
//  Created by Karim Cordilia on 21/03/2023.
//

import Foundation

enum NetworkError: Error {
case invalidResponse
 case statusCode(Int)
 case emptyData
}
