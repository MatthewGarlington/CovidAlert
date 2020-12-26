//
//  StateNewsCard.swift
//  CovidAlert
//
//  Created by Matthew Garlington on 12/22/20.
//

import SwiftUI
import KingfisherSwiftUI


struct StateNewsCard: View {
  //  @ObservedObject var vm = NewsDataViewModel()
    
    
    
    
    let description = "Upper Manhattan and the southern part of Staten Island face stricter restrictions as officials battle a second wave of the outbreak."
    let title = "Coronavirus in N.Y.: Latest Updates"
    
    let samplePhoto = "https://static01.nyt.com/images/2020/11/24/nyregion/24nytoday-photo/24nytoday-photo-facebookJumbo.jpg"
    
    private var threeColumnGrid = [GridItem(.flexible()), GridItem(.flexible())]
    
         
    
    var body: some View {
     
      
        ScrollView {
            
            HStack(spacing: 40) {
             
                LazyVGrid(columns:threeColumnGrid) {
                        
                  
                    ForEach(0..<6, id: \.self) { num in
                        VStack {
                            HStack{

                                ZStack{
                                    
                                    
                                    Spacer()
                                        .frame(width: 225, height: 400)
                                        .background(Color.black)
                                        .cornerRadius(30)
                                        .shadow(radius: 4)
                                    
                                    
                                    
                                    NavigationLink(
                                        destination: NewsDetailView(),
                                        label: {
                                    VStack {
                            
                                                
                                  
                                        
                                        KFImage(URL(string: samplePhoto ))
                                            .resizable()
                                            .frame(width: 225 , height: 125 )
                                            .cornerRadius(12)
                                            .padding(.top)
                                        
                                        
                                        HStack(alignment: .firstTextBaseline) {
                                            Text(title)
                                                .frame(width: 200, height: 50, alignment: .center)
                                                .font(.system(size: 17, weight: .bold))
                                                .foregroundColor(.white)
                                                .padding(.top)
                                            
                                            
                                        }.padding(.horizontal)
                                        .padding(.top)
                                        Text(description)
                                            .frame(width: 150, height: 125, alignment: .center)
                                            .font(.system(size: 14, weight: .semibold))
                                            .foregroundColor(.white)
                                            .padding()
                                        
                                    }
                                    })
                                
                                }
                                    

                            }
                            
                        
                        
                    }
            }
            
        }
        
        
    }
    
    
        }
    
        }
}


struct StateNewsCard_Previews: PreviewProvider {
    static var previews: some View {
    
  
        StateNewsCard()
        
    }
}
