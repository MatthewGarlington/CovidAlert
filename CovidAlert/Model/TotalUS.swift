//
//  TotalUS.swift
//  CovidAlert
//
//  Created by Matthew Garlington on 12/11/20.
//

import Foundation

struct TotalUs: Decodable, Hashable {

    let date, positive, hospitalizedCurrently, inIcuCurrently, onVentilatorCurrently, death, hospitalized, deathIncrease, hospitalizedIncrease, positiveIncrease : Int

}
