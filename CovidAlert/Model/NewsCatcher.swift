//
//  NewsCatcher.swift
//  CovidAlert
//
//  Created by Matthew Garlington on 1/7/21.
//

import Foundation


struct NewsCatcher: Decodable, Hashable {
    
   
    let value: [NewsCatcherArticles]

    
}

struct NewsCatcherArticles: Decodable, Hashable {
   
    
   
    let author: String?
    let body: String?
    let title: String?
    let url: String?
    let description: String?
    let datePublished: String?
    
}



