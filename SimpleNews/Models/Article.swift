//
//  Article.swift
//  SimpleNews
//
//  Created by Daniel Teodoro on 16/09/20.
//  Copyright © 2020 Daniel Teodoro. All rights reserved.
//

import Foundation

struct ArticleList: Decodable {
    let articles: [Article]
    
}

struct Article: Decodable {
    let title: String?
    let description: String?
    let urlToImage: String?
    
}
