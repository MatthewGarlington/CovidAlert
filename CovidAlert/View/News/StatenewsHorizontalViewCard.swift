//
//  StatenewsHorizontalViewCard.swift
//  CovidAlert
//
//  Created by Matthew Garlington on 12/22/20.
//

import SwiftUI
import KingfisherSwiftUI

struct StatenewsHorizontalViewCard: View {
    
    @ObservedObject var vm = NewsDataViewModel()
 
    

    
    let description = "Upper Manhattan and the southern part of Staten Island face stricter restrictions as officials battle a second wave of the outbreak."
    let title = "Coronavirus in N.Y.: Latest Updates"
    
    let samplePhoto = "https://static01.nyt.com/images/2020/11/24/nyregion/24nytoday-photo/24nytoday-photo-facebookJumbo.jpg"
  
    
    var body: some View {
        HStack(spacing: 40) {
           
                NavigationLink(
                    destination: NewsDetailView(),
                    label: {
                        
                        
                        //         vm.news?.articles ?? []
                        ZStack{
                            
                            Spacer()
                                .frame(width: 450, height: 150)
                                .background(Color.black)
                                .cornerRadius(30)
                                .shadow(radius: 4)
             
                      
                    
                            
                            HStack {
                               
                                KFImage(URL(string: samplePhoto ))
                                    .resizable()
                                    .frame(width: 175 , height: 130 )
                                    .cornerRadius(12)
                                    .padding(.top)
                            
                                
                                Text(description)
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



struct StatenewsHorizontalViewCard_Previews: PreviewProvider {
    static var previews: some View {
        StatenewsHorizontalViewCard()
    }
}
