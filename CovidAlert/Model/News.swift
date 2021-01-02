//
//  News.swift
//  CovidAlert
//
//  Created by Matthew Garlington on 12/10/20.
//

import Foundation
import SwiftUI

struct News: Decodable, Hashable {
    
   
    let articles: [Articles]

    
}

struct Articles: Decodable, Hashable {
   
    
    
    
    let author: String?
    let title: String
    let description: String
    let url: String
    let urlToImage: String
    let content: String
    
}



