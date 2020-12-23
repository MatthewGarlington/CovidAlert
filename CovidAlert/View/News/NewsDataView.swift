//
//  GraphDataView.swift
//  CovidAlert
//
//  Created by Matthew Garlington on 12/9/20.
//

import SwiftUI
import KingfisherSwiftUI




struct NewsDataView: View {
    
    @ObservedObject var vm = NewsDataViewModel()
 
    

    
    let description = "Upper Manhattan and the southern part of Staten Island face stricter restrictions as officials battle a second wave of the outbreak."
    let title = "Coronavirus in N.Y.: Latest Updates"
    
    let samplePhoto = "https://static01.nyt.com/images/2020/11/24/nyregion/24nytoday-photo/24nytoday-photo-facebookJumbo.jpg"
  
 
    
   

    
    var body: some View {
        

        
        ScrollView {
            
             
            
            VStack {
                
                StatNewsLargeCard()
                
                
                HStack {
                    ForEach(0..<2, id: \.self) { item in
                        StateNewsCard()
                    }
                }
                HStack {
                    ForEach(0..<2, id: \.self) { item in
                        StateNewsCard()
                    }
                }
                HStack {
                    ForEach(0..<2, id: \.self) { item in
                        StateNewsCard()
                    }
                }
                HStack {
                    ForEach(0..<2, id: \.self) { item in
                        StateNewsCard()
                    }
                }
                VStack {
                    ForEach(0..<2, id: \.self) { item in
                        StatenewsHorizontalViewCard()
                    }
                }
            }
        }.navigationTitle("Covid News")
        .padding(.horizontal)
  
        
    }
    
}


    


struct NewsDataView_Previews: PreviewProvider {
    static var previews: some View {
    
        NavigationView {
        NewsDataView()
        }
   
    }
}
