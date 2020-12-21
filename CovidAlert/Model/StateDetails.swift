//
//  StateDetails.swift
//  CovidAlert
//
//  Created by Matthew Garlington on 12/9/20.
//

import Foundation


struct StateDetails: Decodable, Hashable {

    let state: String
    let positive, death, positiveIncrease, deathIncrease, hospitalizedIncrease: Int
}
