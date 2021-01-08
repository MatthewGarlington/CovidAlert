//
//  Twitter.swift
//  CovidAlert
//
//  Created by Matthew Garlington on 12/13/20.
//

import Foundation


struct Twitter: Codable, Hashable {
    let statuses: [Statuses]

}

struct Statuses: Codable, Hashable, Identifiable {
    let id: Int
    let created_at: String
    let text: String
    let source: String
    let retweet_count: Int
    let favorite_count: Int
    let user: User
}

struct User: Codable, Hashable {

    let name: String
    let screen_name: String
    let profile_image_url: String
    let profile_image_url_https: String
}




