//
//  TwitterViewModel.swift
//  CovidAlert
//
//  Created by Matthew Garlington on 1/7/21.
//


    

import Foundation
import Alamofire
import SwiftyJSON


class TwitterViewModel: ObservableObject {
   
    
    @Published var newsDetails: NewsCatcher?
    
    let headers: HTTPHeaders = ["x-rapidapi-key" : "0d5ce136acmsha0935b31dcc0e53p15e7b1jsn99349520e7b2"]
                        
    
   
    
    init() {
       
        let config = URLSessionConfiguration.default
      
        config.httpAdditionalHeaders = ["x-rapidapi-key" : "0d5ce136acmsha0935b31dcc0e53p15e7b1jsn99349520e7b2"]
        
        let session = URLSession(configuration: config)

        let url = URL(string: "https://contextualwebsearch-websearch-v1.p.rapidapi.com/api/search/NewsSearchAPI?q=Covid19-Maryland&pageNumber=1&pageSize=5&autoCorrect=true&fromPublishedDate=null&toPublishedDate=null")!
        let task = session.dataTask(with: url) { data, response, error in
            
            

            // ensure there is no error for this HTTP response
            guard error == nil else {
                print ("error: \(error!)")
                return
            }
            
            // ensure there is data returned from this HTTP response
            guard let data = data else {
                print("No data")
                return
            }
            
            // Parse JSON into newJSON struct using JSONDecoder
            guard let newsJSON = try? JSONDecoder().decode(NewsCatcher?.self, from: data) else {
               print("Error: Couldn't decode data into newJSON")
               return
             }
            
           // print("gotten json response dictionary is \n \(newsJSON.value[0].title!) \n \(newsJSON.value[0].description!)")
            // update UI using the response here
            DispatchQueue.main.async {
            
            do {
                
                self.newsDetails = try JSONDecoder().decode(NewsCatcher?.self, from: data)
               print(self.newsDetails?.value[1].author)
      
            } catch let jsonError {
                
                print("Decoding failed for UserDetails", jsonError)
        }
            }
            
            
        }
        

        // execute the HTTP request
        task.resume()

    }
}
