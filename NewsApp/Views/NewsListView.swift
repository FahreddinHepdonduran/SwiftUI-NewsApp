//
//  ContentView.swift
//  NewsApp
//
//  Created by fahreddin on 24.10.2022.
//

import SwiftUI
import Kingfisher

struct NewsListView: View {
    
    @EnvironmentObject var appViewModel: AppViewModel
    
    var body: some View {
        if let news = appViewModel.news {
            List(news.articles) { article in
                Text("data exist")
            }
        } else {
            Text("No Data")
        }
    }
    
}

struct NewsListView_Previews: PreviewProvider {
    static var previews: some View {
        NewsListView()
    }
}
