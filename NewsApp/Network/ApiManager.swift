//
//  ApiManager.swift
//  NewsApp
//
//  Created by fahreddin on 24.10.2022.
//

import Alamofire

protocol ApiManagerProtocol {
    func fetch(_ completion: @escaping (Data?) -> Void)
}

final class ApiManager: ApiManagerProtocol {
    
    private let urlString = "https://newsapi.org/v2/everything?q=tesla&from=2022-09-24&sortBy=publishedAt&apiKey=0c0abc7f80dd438a9534d327d0c49ed9"
    
    init() { }
    
    func fetch(_ completion: @escaping (Data?) -> Void) {
        guard let url = URL(string: urlString)
        else {
            completion(nil)
            return
        }
        
        AF.request(url).validate().response { response in
            guard let data = response.data else {
                completion(nil)
                return
            }
            completion(data)
        }
    }
    
}
