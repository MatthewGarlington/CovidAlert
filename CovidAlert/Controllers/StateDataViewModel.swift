//
//  StateDataViewModel.swift
//  CovidAlert
//
//  Created by Matthew Garlington on 12/9/20.
//

import Foundation


class StateDataViewModel: ObservableObject {
   
    
    @Published var stateDetails = [StateDetails]()
    
   
    
    init() {
        
        //network code
        
        guard let url = URL(string: "https://api.covidtracking.com/v1/states/current.json") else { return }
        
        URLSession.shared.dataTask(with: url) { (data, resp, err) in
            
            DispatchQueue.main.async {
              
            guard let data = data else { return }
            
          
            do {
                
                self.stateDetails = try JSONDecoder().decode([StateDetails].self, from: data)
            //   print(self.stateDetails)
        } catch let jsonError {
            //  print("Decoding failed for UserDetails", jsonError)
        }
       
            }
        }.resume()
    }
}
