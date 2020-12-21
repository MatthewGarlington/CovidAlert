//
//  StateNewsView.swift
//  CovidAlert
//
//  Created by Matthew Garlington on 12/14/20.
//

import Foundation


class StateNewsDataViewModel: ObservableObject {
   
  
    

       
        
    @Published var news: News?
        
       
        
        init() {
            
            //network code
            
            guard let url = URL(string: "http://newsapi.org/v2/everything?q=Maryland&from=2020-11-15&sortBy=publishedAt&apiKey=c6fe698a3b3f4334814ccdf9732ecaf7") else { return }
            
            URLSession.shared.dataTask(with: url) { (data, resp, err) in
                
                DispatchQueue.main.async {
                  
                guard let data = data else { return }
                
              
                do {
                    
                    self.news = try JSONDecoder().decode(News.self, from: data)
      //              print(self.news)
            } catch let jsonError {
            //    print("Decoding failed for UserDetails", jsonError)
            }
           
                }
            }.resume()
        }
    }
