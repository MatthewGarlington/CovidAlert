//
//  TXDetailViewModel.swift
//  CovidAlert
//
//  Created by Matthew Garlington on 12/27/20.
//

import Foundation

class TXDetailViewModel: ObservableObject {
   
    
    @Published var allStateDetails: AllStateDetails?
    
   
    
    init() {
        
        
        
        //network code
        
        let fixedURLString =  "https://api.covidtracking.com/v1/states/tx/current.json"
            .addingPercentEncoding(withAllowedCharacters: .urlQueryAllowed) ?? ""
        
        
        guard let url = URL(string: fixedURLString)
        else { return }
        
        URLSession.shared.dataTask(with: url) { (data, resp, err) in
            
            DispatchQueue.main.async {
              
            guard let data = data else { return }
            
          
            do {
                
                self.allStateDetails = try JSONDecoder().decode(AllStateDetails.self, from: data)
         //       print(self.allStateDetails!)
        } catch let jsonError {
            //print("Decoding failed for UserDetails", jsonError)
        }
       
            }
        }.resume()
    }
}
