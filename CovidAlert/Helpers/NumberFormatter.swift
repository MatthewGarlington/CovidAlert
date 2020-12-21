//
//  NumberFormatter.swift
//  CovidAlert
//
//  Created by Matthew Garlington on 12/9/20.
//

import Foundation

extension Int {
    
    func formatNumber() -> String {
        let formatter = NumberFormatter()
        formatter.groupingSeparator = ","
        formatter.numberStyle = .decimal
        return formatter.string(from: NSNumber(value: self))!
    }
}
