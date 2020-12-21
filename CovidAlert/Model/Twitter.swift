//
//  Twitter.swift
//  CovidAlert
//
//  Created by Matthew Garlington on 12/13/20.
//

import Foundation

struct Data: Decodable {
    let tweets: [Tweets]
    let cursor: String
}

struct Tweets: Decodable, Hashable {
    let created_at: Int
    let full_text: String
    let retweet_count: Int
}




