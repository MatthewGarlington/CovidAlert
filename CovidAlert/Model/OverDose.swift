//
//  OverDose.swift
//  CovidAlert
//
//  Created by Matthew Garlington on 12/19/20.
//

import Foundation
import SwiftUI

struct DataResponse: Decodable, Hashable {
    
    let response: OverDose
}


struct OverDose: Decodable, Hashable {

    let state: String?
    let year: String?
    let month: String?
    let indicator: String?
    let data_value: String?
    let state_name: String?
    let footnote: String?
    
}
