//
//  NetworkManager.swift
//  MovieDBProject
//
//  Created by Ahmet Güvez on 14.05.2022.
//

import Foundation

public class NetworkManager {
    public static let shared = NetworkManager()
    
    public init() {}
    
    private let baseEndpointUrl = URL(string: Constant.baseEndpointUrl)!
    private let session = URLSession(configuration: .default)
    
    public func service<T: Decodable, U: Decodable>(request: APIRequest<T>,page: Int? = 1, completion: @escaping (Swift.Result<U, ErrorModel>) -> Void) {
        
        guard let bodyDaTa = endpoint(for: request,page: page) else { return completion(.failure(ErrorModel.encodeError()))}
        
        let request = URLRequest(url: bodyDaTa)
        
        let task = session.dataTask(with: request) { data, response, error in
            if let data = data {
                do{
                    let response = try JSONDecoder().decode(U.self, from: data)
                    completion(.success(response))
                } catch{
                    completion(.failure(ErrorModel.init(message: "\(error)")))
                }
            }else if let error = error {
                completion(.failure(ErrorModel.init(message: "\(error)")))
            }
        }
        task.resume()
    }
    
    private func endpoint<T: Decodable>(for request: APIRequest<T>, page: Int? = 1) -> URL? {
        
        guard let baseUrl = URL(string: request.action.path,relativeTo: baseEndpointUrl) else {
            fatalError("Bad resourceName: \(request.action)")
        }
        
        var components = URLComponents(url: baseUrl, resolvingAgainstBaseURL: true)!
        
        let queryItems: [URLQueryItem]
        
        queryItems = [URLQueryItem(name: "api_key", value: Constant.publicKey), URLQueryItem(name: "language", value: Language.en.language), URLQueryItem(name: "page", value: "\(page ?? 1)")]
        
        components.queryItems =   queryItems
        return components.url
    }
}
