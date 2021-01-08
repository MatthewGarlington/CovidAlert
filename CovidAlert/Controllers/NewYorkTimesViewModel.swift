//
//  NewYorkTimesViewModel.swift
//  CovidAlert
//
//  Created by Matthew Garlington on 12/27/20.
//

import Foundation
import Alamofire
import SwiftyJSON


class NewYorkTimesViewModel: ObservableObject {
   
  
    

       
        
    @Published var nytimesnews: NYTimes?
        
       
        
        init() {
            
            //network code
            
            guard let url = URL(string: "https://api.nytimes.com/svc/search/v2/articlesearch.json?q=Covid&api-key=u8ZvUFJdNbwzYayjscegwovL26WtlPfB") else { return }
            
            URLSession.shared.dataTask(with: url) { (data, resp, err) in
                
                DispatchQueue.main.async {
                  
                guard let data = data else { return }
                
              
                do {
                    
                    self.nytimesnews = try JSONDecoder().decode(NYTimes?.self, from: data)
                  print(self.nytimesnews?.response.docs.count)
                    print(self.nytimesnews?.status)
                 //   print(self.nytimesnews?.response.docs[0].byline.original)
                    
            } catch let jsonError {
                 print("Decoding failed for New york Times News", jsonError)
            }
           
                }
            }.resume()
        }
    }
