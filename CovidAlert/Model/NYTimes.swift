//
//  NYTimes.swift
//  CovidAlert
//
//  Created by Matthew Garlington on 12/27/20.
//

import SwiftUI


struct NYTimes: Decodable, Hashable {
    
   
    let status: String?
    let copyright: String?
    let response: Response

    
}

struct Response: Decodable, Hashable {
    
    let docs: [Docs]
    
}


struct Docs: Decodable, Hashable {
   
    
    
    let abstract: String?
    let web_url: String?
    let snippet: String?
    let lead_paragraph: String?
    let headline: Headline
    let multimedia: [Multimedia]
    let byline: Byline

 
    
}

struct Byline: Decodable, Hashable {
    
    let original: String?
}



struct Headline: Decodable, Hashable {
    
    let main: String?
    let print_headline: String?
}



struct Multimedia: Decodable, Hashable {

    let url: String
}


