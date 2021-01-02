//
//  OverDoseDeathViewModel.swift
//  CovidAlert
//
//  Created by Matthew Garlington on 12/19/20.
//

import Foundation


class OverDoseDeathViewModel: ObservableObject {
   
    
    @Published var dataResponse: DataResponse?
    
   
    
    init() {
        
        //network code
        
        guard let url = URL(string: "https://data.cdc.gov/resource/hvc8-gf6t.json") else { return }
        
        URLSession.shared.dataTask(with: url) { (data, resp, err) in
            
            DispatchQueue.main.async {
              
            guard let data = data else { return }
            
          
            do {
                
                self.dataResponse = try JSONDecoder().decode(DataResponse.self, from: data)
               print(self.dataResponse!)
        } catch let jsonError {
            print("Decoding failed for OverDose", jsonError)
        }
       
            }
        }.resume()
    }
}

