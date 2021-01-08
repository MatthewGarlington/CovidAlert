//
//  NewsRapidAPI.swift
//  CovidAlert
//
//  Created by Matthew Garlington on 1/8/21.
//

import Foundation


struct NewsRapidAPI: Decodable, Hashable {
    
   
    let articles: [NewsRapidAraay]

    
}

struct NewsRapidAraay: Decodable, Hashable {
   
    
   
    let summary: String?
    let title: String?
    let link: String?
    let published_date: String?
    
}
