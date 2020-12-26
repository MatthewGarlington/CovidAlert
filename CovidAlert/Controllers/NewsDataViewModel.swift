//
//  NewsDataViewModel.swift
//  CovidAlert
//
//  Created by Matthew Garlington on 12/10/20.
//

import Foundation
import Alamofire
import SwiftyJSON


class NewsDataViewModel: ObservableObject {
   
  
    

       
        
    @Published var news: News?
        
       
        
        init() {
            
            //network code
            
            guard let url = URL(string: "https://newsapi.org/v2/everything?q=Coronavirus&apiKey=c6fe698a3b3f4334814ccdf9732ecaf7") else { return }
            
            URLSession.shared.dataTask(with: url) { (data, resp, err) in
                
                DispatchQueue.main.async {
                  
                guard let data = data else { return }
                
              
                do {
                    
                    self.news = try JSONDecoder().decode(News?.self, from: data)
                //   print(self.news)
            } catch let jsonError {
              //  print("Decoding failed for NewsDetails", jsonError)
            }
           
                }
            }.resume()
        }
    }
