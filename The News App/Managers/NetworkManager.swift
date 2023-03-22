//
//  NetworkManager.swift
//  The News App
//
//  Created by Karim Cordilia on 21/03/2023.
//

import Foundation


protocol Networking {
    func request<T: Decodable>(url: URLRequest, completion: @escaping (Result<T,Error>) -> Void)
}

class NetworkingManager: Networking {
    
    private let session: URLSession
    
    init(session: URLSession = .shared) {
        self.session = session
    }
    
    func request<T: Decodable>(url: URLRequest, completion: @escaping (Result<T, Error>) -> Void) {
        
        session.dataTask(with: url) { data, response, error in 
            do {
                if let error = error {
                    completion(.failure(error))
                    return
                }
                
                guard let httpResponse = response as? HTTPURLResponse else {
                    completion(.failure(NetworkError.invalidResponse))
                    return
                }
                
                guard (200...299).contains(httpResponse.statusCode) else {
                    completion(.failure(NetworkError.statusCode(httpResponse.statusCode)))
                    return
                }
                
                guard let data = data else {
                    completion(.failure(NetworkError.emptyData))
                    return
                }
                
                let decodedObject = try JSONDecoder().decode(T.self, from: data)
                
                completion(.success(decodedObject))
            } catch {
                completion(.failure(error))
            }
        }.resume()
    }
}
