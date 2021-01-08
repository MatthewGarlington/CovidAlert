//
//  NMTwitterCardView.swift
//  CovidAlert
//
//  Created by Matthew Garlington on 1/7/21.
//

import SwiftUI
import KingfisherSwiftUI

struct NMTwitterCardView: View {
    let twitterDecoded = Bundle.main.decode("NMHealth.json")
    let samplePhoto = "https://static01.nyt.com/images/2020/11/24/nyregion/24nytoday-photo/24nytoday-photo-facebookJumbo.jpg"
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(alignment: .top){
                ForEach(twitterDecoded?.statuses ?? [], id: \.id) { tweet in
                
                ZStack{
                    Spacer()
                        .frame(width: 400, height: 350)
                        .background(Color(.init(white: 0.95, alpha: 1)))
                        .cornerRadius(25)
                        .shadow(radius: 4)
                    
                    VStack(alignment: .leading) {
                 
           
                       
                        HStack(spacing: 25) {
                            
                     
                            
                            KFImage(URL(string: tweet.user.profile_image_url_https))
                                .resizable()
                                .scaledToFit()
                                .frame(width: 100, height: 100)
                                .background(Color(.init(white: 0.85, alpha: 1)))
                                .clipShape(Circle())
                                .shadow(radius: 6)
                                .padding(.horizontal, 20)
                            
                            
                            VStack(alignment: .leading) {
                                
                                Text("\(tweet.user.name)")
                                    .bold()
                                
                                Text("@\(tweet.user.screen_name)")
                                    .foregroundColor(Color(.init(white: 0.55, alpha: 1)))
                                
                            }     .frame(width: 250, height: 150)
                          }
                        
                        Text("\(tweet.text)")
                            .font(.system(size: 20))
                            .fontWeight(.regular)
                            .frame(width: 390, height: 100)
                            .padding(.horizontal)
                        
                        
                        Text("\(tweet.created_at)")
                            .foregroundColor(Color(.init(white: 0.55, alpha: 1)))
                            
                            .padding(.bottom)
                            .padding(.horizontal, 20)
                        
                        HStack(alignment: .center, spacing: 50) {
                            HStack{
                                
                                Image(systemName: "bubble.left")
                                Text("2")
                                    .font(.system(size: 15))
                                
                                
                            }
                            HStack{
                                Image(systemName: "return")
                                Text("\(tweet.retweet_count.formatNumber())")
                                    .font(.system(size: 15))
                                    .frame(width: 30)
                                
                            }
                            HStack{
                                Image(systemName: "heart")
                                Text("\(tweet.favorite_count.formatNumber())")
                                    .font(.system(size: 15))
                                
                            }
                            
                            Image(systemName: "square.and.arrow.up")
                            
                            
                        }.padding(.horizontal, 50)
                        
                        
                        
                    }
                }
                }
                }
                
        }
            
        
    }
    
    
    
}


struct NMTwitterCardView_Previews: PreviewProvider {
    static var previews: some View {
        NMTwitterCardView()
    }
}
