//
//  NewsAppApp.swift
//  NewsApp
//
//  Created by fahreddin on 24.10.2022.
//

import SwiftUI

@main
struct NewsAppApp: App {
    
    @StateObject var appViewModel = AppViewModel()
    
    var body: some Scene {
        WindowGroup {
            NewsListView()
                .environmentObject(appViewModel)
        }
    }
    
}
