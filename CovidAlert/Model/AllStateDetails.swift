//
//  AllStateDetails.swift
//  CovidAlert
//
//  Created by Matthew Garlington on 12/10/20.
//

import Foundation


struct AllStateDetails: Decodable, Hashable {
    let state: String
    let positive, death, positiveIncrease, deathIncrease, hospitalizedIncrease, hospitalizedCurrently: Int
}
