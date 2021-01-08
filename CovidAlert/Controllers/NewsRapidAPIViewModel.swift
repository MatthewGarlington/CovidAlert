//
//  NewsRapidAPIViewModel.swift
//  CovidAlert
//
//  Created by Matthew Garlington on 1/8/21.
//

import Foundation
import Alamofire
import SwiftyJSON


class NewsRapidAPIViewModel: ObservableObject {
   
    
    @Published var newsRapidAPI: NewsRapidAPI?
    

                        
    
   
    
    init() {
       
        let config = URLSessionConfiguration.default
      
        config.httpAdditionalHeaders = ["x-rapidapi-key" : "0d5ce136acmsha0935b31dcc0e53p15e7b1jsn99349520e7b2"]
        
        let session = URLSession(configuration: config)

        let url = URL(string: "https://newscatcher.p.rapidapi.com/v1/search_free?q=Maryland-Health&lang=en&ranked_only=True&page=1&page_size=25")!
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
            guard let newsArticlesJSON = try? JSONDecoder().decode(NewsRapidAPI?.self, from: data) else {
               print("Error: Couldn't decode data into newJSON")
               return
             }
            
            //    print("gotten json response dictionary is \n \(newsArticlesJSON.articles)")
            // update UI using the response here
           
            DispatchQueue.main.async {

            do {

                self.newsRapidAPI = try JSONDecoder().decode(NewsRapidAPI?.self, from: data)
                print(self.newsRapidAPI?.articles.count)

            } catch let jsonError {

                print("Decoding failed for UserDetails", jsonError)
        }
            }
            
            
        }
        

        // execute the HTTP request
        task.resume()

    }
}
