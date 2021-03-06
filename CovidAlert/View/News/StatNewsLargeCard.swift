//
//  StatNewsLargeCard.swift
//  CovidAlert
//
//  Created by Matthew Garlington on 12/23/20.
//

import SwiftUI
import KingfisherSwiftUI

struct StatNewsLargeCard: View {
    @ObservedObject var vm = NewYorkTimesViewModel()
 
    

    
    let description = "Upper Manhattan and the southern part of Staten Island face stricter restrictions as officials battle a second wave of the outbreak."
    let title = "Coronavirus in N.Y.: Latest Updates"
    
    let samplePhoto = "https://static01.nyt.com/images/2020/11/24/nyregion/24nytoday-photo/24nytoday-photo-facebookJumbo.jpg"
    var body: some View {
        HStack(spacing: 40) {
           
                NavigationLink(
                    destination: NewsDetailView(choice: 7),
                    label: {
                        
                        
                   
                        ZStack{
                            
                            Spacer()
                                .frame(width: 400, height: 550)
                                .background(Color.init(#colorLiteral(red: 0.3028137088, green: 0.2979239523, blue: 0.7478307486, alpha: 1)))
                                .cornerRadius(40)
                                .shadow(radius: 4)
             
                      
                            VStack {
                                
                                 KFImage(URL(string: samplePhoto ))
                                     .resizable()
                                     .frame(width: 385 , height: 200 )
                                     .cornerRadius(12)
                                     .padding(.top)
                             
                           
                            
                        
                                
                                VStack(alignment: .center) {
                              
                                HStack(alignment: .firstTextBaseline) {
                                    Text(vm.nytimesnews?.response.docs[7].headline.main ?? title)
                                        .frame(width: 350, height: 100, alignment: .center)
                                        .font(.system(size: 20, weight: .bold))
                                        .foregroundColor(.white)
                                        .padding(.top)
                                  
                              

                                }
                           
                                }
                               
                           
                                Text(vm.nytimesnews?.response.docs[7].snippet ?? description)
                                    .frame(width: 350, height: 200, alignment: .center)
                                    .font(.system(size: 17, weight: .semibold))
                                    .foregroundColor(.white)
                                    .padding(.horizontal)
                                    .padding(.bottom)
                                
                            
                            }
                        
                            
                        }
                        
                    })
            }
            
        
        
        
    }





    }


struct StatNewsLargeCard_Previews: PreviewProvider {
    static var previews: some View {
        StatNewsLargeCard()
    }
}
