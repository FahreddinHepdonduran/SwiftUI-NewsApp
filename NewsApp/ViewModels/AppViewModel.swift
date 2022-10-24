//
//  AppViewModel.swift
//  NewsApp
//
//  Created by fahreddin on 24.10.2022.
//

import Foundation

protocol AppViewModelProtocol {
    var news: NewsResponse? { get set }
    var service: ApiManagerProtocol { get set }
    
    func fetchNews()
}

final class AppViewModel: ObservableObject, AppViewModelProtocol {
    
    @Published var news: NewsResponse?
    
    var service: ApiManagerProtocol
    
    init(service: ApiManagerProtocol = ApiManager() ) {
        self.service = service
    }
    
    func fetchNews() {
        service.fetch { [weak self] data in
            guard let self = self, let data = data else { return }
            
            do {
                let result = try JSONDecoder().decode(NewsResponse.self, from: data)
                self.news = result
            } catch {
                self.news = nil
            }
        }
    }
    
}
