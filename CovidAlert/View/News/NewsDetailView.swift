//
//  NewsDetailView.swift
//  CovidAlert
//
//  Created by Matthew Garlington on 12/13/20.
//

import SwiftUI
import KingfisherSwiftUI

struct NewsDetailView: View {
    
//@ObservedObject var vm = NewsDataViewModel()
    
    let testNewsData = News(articles: [Articles(author: "Troy Closson", title: "Coronavirus in N.Y.: Latest Updates", description: "Upper Manhattan and the southern part of Staten Island face stricter restrictions as officials battle a second wave of the outbreak.", url: "https://www.nytimes.com/2020/11/24/nyregion/coronavirus-nyc.html", urlToImage: "https://static01.nyt.com/images/2020/11/24/nyregion/24nytoday-photo/24nytoday-photo-facebookJumbo.jpg", content: """
    While American regulators work line by line through the raw data from vaccine makers to check their trial results, their counterparts in Britain rely more heavily on the companies’ own analyses. Britain also relied on an old law that allowed the country to circumvent the European Union’s regulatory regimen, and its regulatory agency fast-tracked the review of the Pfizer vaccine.
    
    The speedy approval has fed concerns about safety, though British regulators have repeatedly said they have not taken shortcuts. Regulators there not only review trial data, but also the manufacturing processes of vaccines and controls.

    In the U.S., the Food and Drug Administration will decide on emergency authorization for the Pfizer vaccine shortly after a meeting of an advisory panel on Dec. 10. The European Union, like the F.D.A., has planned a high-profile meeting with outside experts who will weigh in on the vaccine, on Dec. 29, and a decision on authorization is expected several days later.
""")])
    
   

    
    var body: some View {

        ScrollView {
            
            ForEach(testNewsData., id: \.self) { new in
            ZStack(alignment: .bottomLeading) {
                KFImage(URL(string: new.urlToImage))
                    .resizable()
                    .scaledToFit()
                    
                
                LinearGradient(gradient: Gradient(colors: [Color.clear, Color.black]), startPoint: .center, endPoint: .bottom)
                
                HStack {
                    VStack(alignment: .leading) {
                        Text(new.title)
                            .foregroundColor(.white)
                            .font(.system(size: 18, weight: .bold))
                    
                    }
                    Spacer()
                    
               
                    
                    Text(new.author)
                        .foregroundColor(.white)
                        .font(.system(size: 14, weight: .regular))
                        .frame(width: 80)
                        .multilineTextAlignment(.trailing)
                                
                }.padding()
            }
            
            VStack(alignment: .leading, spacing: 8){
                Text(new.title)
                    
                    .font(.system(size: 16, weight: .bold))
                

                
              
                
                HStack { Spacer() }
                
                
           
            }.padding(.horizontal)
            .padding(.top)
            
                Text(new.content)
                .frame(height: 500)
                .padding(.top, 8)
                .font(.system(size: 16, weight: .regular))
                .padding(.horizontal)
                .padding(.bottom)
            
            Link(
                destination: URL(string: new.link)!,
                label: {
                    Text("Read More")
                })
                     
           
   
    
            }
              .navigationBarTitle("Title", displayMode: .inline)
        
    }
  
    }
}

        
        
    


        
  


struct NewsDetailView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            NewsDetailView()
        }
        HomeView()
    }
}

