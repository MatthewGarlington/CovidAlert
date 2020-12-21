//
//  NewsDetailView.swift
//  CovidAlert
//
//  Created by Matthew Garlington on 12/13/20.
//

import SwiftUI
import KingfisherSwiftUI

struct NewsDetailView: View {
    
    @ObservedObject var vm = StateDetailViewModel(stateID: "MD")
    
    let samplePhoto = "https://static01.nyt.com/images/2020/11/24/nyregion/24nytoday-photo/24nytoday-photo-facebookJumbo.jpg"
    let title = "Coronavirus in N.Y.: Latest Updates"
    
    let content = """
    While American regulators work line by line through the raw data from vaccine makers to check their trial results, their counterparts in Britain rely more heavily on the companies’ own analyses. Britain also relied on an old law that allowed the country to circumvent the European Union’s regulatory regimen, and its regulatory agency fast-tracked the review of the Pfizer vaccine.
    
    The speedy approval has fed concerns about safety, though British regulators have repeatedly said they have not taken shortcuts. Regulators there not only review trial data, but also the manufacturing processes of vaccines and controls.

    In the U.S., the Food and Drug Administration will decide on emergency authorization for the Pfizer vaccine shortly after a meeting of an advisory panel on Dec. 10. The European Union, like the F.D.A., has planned a high-profile meeting with outside experts who will weigh in on the vaccine, on Dec. 29, and a decision on authorization is expected several days later.
"""
    
    let name = "New York Times"
    
    let author = "Troy Closson"
    
    let link = "https://www.nytimes.com/2020/11/24/nyregion/coronavirus-nyc.html"
    
    
    var body: some View {

        ScrollView {
            //         vm.news?.articles ?? []
            ZStack(alignment: .bottomLeading) {
                KFImage(URL(string: samplePhoto))
                    .resizable()
                    .scaledToFit()
                    
                
                LinearGradient(gradient: Gradient(colors: [Color.clear, Color.black]), startPoint: .center, endPoint: .bottom)
                
                HStack {
                    VStack(alignment: .leading) {
                        Text(name)
                            .foregroundColor(.white)
                            .font(.system(size: 18, weight: .bold))
                    
                    }
                    Spacer()
                    
               
                    
                    Text(author)
                        .foregroundColor(.white)
                        .font(.system(size: 14, weight: .regular))
                        .frame(width: 80)
                        .multilineTextAlignment(.trailing)
                                
                }.padding()
            }
            
            VStack(alignment: .leading, spacing: 8){
                Text(title)
                    
                    .font(.system(size: 16, weight: .bold))
                
        //        Text("Tokyo, Japan")
                
              
                
                HStack { Spacer() }
                
                
           
            }.padding(.horizontal)
            .padding(.top)
            
            Text(content)
                .frame(height: 500)
                .padding(.top, 8)
                .font(.system(size: 16, weight: .regular))
                .padding(.horizontal)
                .padding(.bottom)
            
            Link(
                destination: URL(string: link)!,
                label: {
                    Text("Read More")
                })
                     
           
   
    
            }
        .navigationBarTitle(title, displayMode: .inline)
        
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

