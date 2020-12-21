//
//  TwitterViewController.swift
//  CovidAlert
//
//  Created by Matthew Garlington on 12/13/20.
//

import Foundation
import Alamofire
import SwiftyJSON






class TwitterViewModel: ObservableObject {

    @Published var tweetData: Tweets?

    
    init() {

        let headers = [
            "x-rapidapi-key": "0d5ce136acmsha0935b31dcc0e53p15e7b1jsn99349520e7b2",
            "x-rapidapi-host": "twitter32.p.rapidapi.com"
        ]

        let request = NSMutableURLRequest(url: NSURL(string: "https://twitter32.p.rapidapi.com/getSearch?hashtag=Covid19&start_date=2018-01-01&end_date=2020-10-10&lang=en")! as URL,
                                                cachePolicy: .useProtocolCachePolicy,
                                            timeoutInterval: 10.0)
        request.httpMethod = "GET"
        request.allHTTPHeaderFields = headers
       
        let jsonObject = [Tweets]()
        let session = URLSession.shared
        let dataTask = session.dataTask(with: request as URLRequest, completionHandler: { (data, response, error) -> Void in
            if (error != nil) {
          //      print(error)
                                            
            } else {
                
                let httpResponse = response as? HTTPURLResponse
            

               
             //   print(httpResponse)
            
               
            }
       
            
            
           
        })

        dataTask.resume()
    }
}
