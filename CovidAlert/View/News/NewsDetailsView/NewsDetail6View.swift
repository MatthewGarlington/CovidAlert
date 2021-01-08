//
//  NewsDetail6View.swift
//  CovidAlert
//
//  Created by Matthew Garlington on 1/2/21.
//

import SwiftUI
import KingfisherSwiftUI

struct NewsDetail6View: View {
    @ObservedObject var vm = NewYorkTimesViewModel()
    
 
    
 
    let author = "Troy Closson"
    let title = "Coronavirus in N.Y.: Latest Updates"
    let description = "Upper Manhattan and the southern part of Staten Island face stricter restrictions as officials battle a second wave of the outbreak."
    let url = "https://www.nytimes.com/2020/11/24/nyregion/coronavirus-nyc.html"
    let urlToImage = "https://static01.nyt.com/images/2020/11/24/nyregion/24nytoday-photo/24nytoday-photo-facebookJumbo.jpg"
    let content = """
    While American regulators work line by line through the raw data from vaccine makers to check their trial results, their counterparts in Britain rely more heavily on the companies’ own analyses. Britain also relied on an old law that allowed the country to circumvent the European Union’s regulatory regimen, and its regulatory agency fast-tracked the review of the Pfizer vaccine.
    

"""
    
   

    
    var body: some View {

        ScrollView {
            
     
            ZStack(alignment: .bottomLeading) {
                KFImage(URL(string: urlToImage)!)
                    .resizable()
                    .scaledToFit()
                    
                
                LinearGradient(gradient: Gradient(colors: [Color.clear, Color.black]), startPoint: .center, endPoint: .bottom)
                
                HStack {
                    VStack(alignment: .leading) {
                        Text(vm.nytimesnews?.response.docs[6].headline.print_headline ?? title)
                            .foregroundColor(.white)
                            .font(.system(size: 18, weight: .bold))
                
//                        vm.nytimesnews?.response.docs[0].headline.print_headline ??
                    }
                    Spacer()
                    
               
                    
                    Text(vm.nytimesnews?.response.docs[6].byline.original ?? author)
                        .foregroundColor(.white)
                        .font(.system(size: 14, weight: .regular))
                        .frame(width: 80)
                        .multilineTextAlignment(.trailing)
//                    vm.nytimesnews?.response.docs[0].byline.original ??
                                
                }.padding()
            }
            
            VStack(alignment: .leading, spacing: 8){
                Text(vm.nytimesnews?.response.docs[6].headline.main ?? title)
                    
                    .font(.system(size: 16, weight: .bold))
                

//                vm.nytimesnews?.response.docs[0].headline.main ??
              
                
                HStack { Spacer() }
                
                
           
            }.padding(.horizontal)
            .padding(.top)
            
            Text(vm.nytimesnews?.response.docs[6].lead_paragraph ?? content)
                .frame(height: 350)
                .padding(.top, 8)
                .font(.system(size: 16, weight: .regular))
                .padding(.horizontal)
                .padding(.bottom)
//            vm.nytimesnews?.response.docs[0].lead_paragraph ??
            
            Link(
                destination: URL(string: url)!,
                label: {
                    Text("Read More")
                })
//            vm.nytimesnews?.response.docs[0].web_url ??
           
   
    
            }
        .navigationBarTitle(title, displayMode: .inline)
        
//        vm.nytimesnews?.response.docs[0].headline.print_headline ??
        
    }
  
    }

struct NewsDetail6View_Previews: PreviewProvider {
    static var previews: some View {
        NewsDetail6View()
    }
}
