//
//  WebService.swift
//  SimpleNews
//
//  Created by Daniel Teodoro on 16/09/20.
//  Copyright © 2020 Daniel Teodoro. All rights reserved.
//

import Foundation

class WebService {
    
    func getArticles(url: URL, completion: @escaping ([Article]?) -> ()) {
        
        URLSession.shared.dataTask(with: url) {data, response, error in
            
            if let error = error {
                print(error.localizedDescription)
                completion(nil)
            } else if let data = data {
                
                let articles = try? JSONDecoder().decode(ArticleList.self, from: data).articles
                
                print(data)
                completion(articles)
            }
        }.resume()
    }
}
