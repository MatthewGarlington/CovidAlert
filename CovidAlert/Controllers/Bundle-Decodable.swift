////
////  TwitterViewController.swift
////  CovidAlert
////
////  Created by Matthew Garlington on 12/13/20.
////

import Foundation
import UIKit
import Alamofire
import SwiftyJSON




extension Bundle {
    func decode(_ file: String) -> Twitter? {
        
        
        guard let url = self.url(forResource: file, withExtension: nil) else {
            fatalError("Failed to locate \(file) in bundle.")
        }

        guard let data = try? Data(contentsOf: url) else {
            fatalError("Failed to load \(file) from bundle.")
        }

        let decoder = JSONDecoder()
        
        


        guard let loaded = try? decoder.decode(Twitter?.self, from: data) else {
            fatalError("Failed to decode \(file) from bundle.")
        }

        return loaded
    }
}







    


