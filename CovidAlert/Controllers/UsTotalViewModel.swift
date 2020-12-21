//
//  UsTotalViewModel.swift
//  CovidAlert
//
//  Created by Matthew Garlington on 12/11/20.
//

import Foundation




class UsTotalViewModel: ObservableObject {
   
    
    @Published var totalUS = [TotalUs]()
    
   
    
    init() {
        
        
        
        //network code
        
        let fixedURLString =  "https://api.covidtracking.com/v1/us/current.json"
            .addingPercentEncoding(withAllowedCharacters: .urlQueryAllowed) ?? ""
        
        
        guard let url = URL(string: fixedURLString)
        else { return }
        
        URLSession.shared.dataTask(with: url) { (data, resp, err) in
            
            DispatchQueue.main.async {
              
            guard let data = data else { return }
            
          
            do {
                
                self.totalUS = try JSONDecoder().decode([TotalUs].self, from: data)
           //     print(self.totalUS)
        } catch let jsonError {
           // print("Decoding failed for UserDetails", jsonError)
        }
       
            }
        }.resume()
    }
}
