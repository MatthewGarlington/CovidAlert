//
//  StatenewsHorizontalViewCard.swift
//  CovidAlert
//
//  Created by Matthew Garlington on 12/22/20.
//

import SwiftUI
import KingfisherSwiftUI

struct StatenewsHorizontalViewCard: View {
    
    @ObservedObject var vm = NewYorkTimesViewModel()
 
    

    
    let description = "Upper Manhattan and the southern part of Staten Island face stricter restrictions as officials battle a second wave of the outbreak."
    let title = "Coronavirus in N.Y.: Latest Updates"
    
    let samplePhoto7 = "https://www.cidrap.umn.edu/sites/default/files/public/styles/ss_media_popup/public/media/article/group_of_covid_testers-mecklenburg_county.jpg?itok=eOV38Aqf"
    
    let samplePhoto8 = "https://www.hopkinsmedicine.org/-/media/images/health/1_-conditions/infectious-diseases/coronavirus-hero.ashx?h=500&la=en&mh=500&mw=1300&w=1297&hash=6464CC9E4F6364821A5973E670CFB3342C2D9AF4"
   
    let url = "https://www.nytimes.com/2020/11/24/nyregion/coronavirus-nyc.html"
    
    var body: some View {
        HStack(spacing: 40) {
         
            VStack {
                Link(
                    destination: URL(string: vm.nytimesnews?.response.docs[6].web_url ?? url)!,
                    label: {
                        
               
                        ZStack{
                            
                            Spacer()
                                .frame(width: 400, height: 150)
                                .background(Color.init(#colorLiteral(red: 0.3028137088, green: 0.2979239523, blue: 0.7478307486, alpha: 0.8472164735)))
                                .cornerRadius(30)
                                .shadow(radius: 4)
             
                      
                    
                            
                            HStack {
                               
                                KFImage(URL(string: samplePhoto7 ))
                                    .resizable()
                                    .frame(width: 175 , height: 130 )
                                    .cornerRadius(12)
                                    .padding(.top)
                            
                                
                                Text(vm.nytimesnews?.response.docs[6].snippet ?? description)
                                    .frame(width: 150, height: 125, alignment: .center)
                                    .font(.system(size: 14, weight: .semibold))
                                    .foregroundColor(.white)
                                    .padding()
                                
                            }
                        
                        
                            
                        }
                        
                    })
                
                Link(
                    destination: URL(string: vm.nytimesnews?.response.docs[7].web_url ?? url)!,
                    label: {
                        
                        
                        //         vm.news?.articles ?? []
                        ZStack{
                            
                            Spacer()
                                .frame(width: 400, height: 150)
                                .background(Color.init(#colorLiteral(red: 0.3028137088, green: 0.2979239523, blue: 0.7478307486, alpha: 0.8472164735)))
                                .cornerRadius(30)
                                .shadow(radius: 4)
             
                      
                    
                            
                            HStack {
                               
                                KFImage(URL(string: samplePhoto8 ))
                                    .resizable()
                                    .frame(width: 175 , height: 130 )
                                    .cornerRadius(12)
                                    .padding(.top)
                            
                                
                                Text(vm.nytimesnews?.response.docs[7].snippet ?? description)
                                    .frame(width: 150, height: 125, alignment: .center)
                                    .font(.system(size: 14, weight: .semibold))
                                    .foregroundColor(.white)
                                    .padding()
                                
                            }
                        
                        
                            
                        }
                        
                    })
            }
        }
            
        
        
        
    }





    }



struct StatenewsHorizontalViewCard_Previews: PreviewProvider {
    static var previews: some View {
        StatenewsHorizontalViewCard()
    }
}
