//
//  StateNewsCard.swift
//  CovidAlert
//
//  Created by Matthew Garlington on 12/22/20.
//

import SwiftUI
import KingfisherSwiftUI


struct StateNewsCard: View {
    
    @ObservedObject var vm = NewYorkTimesViewModel()
    
    let testNewsData = News(articles: [Articles(author: "Tim Apple", title: "Coronavirus in N.Y.: Latest Updates", description: "Upper Manhattan and the southern part of Staten Island face stricter restrictions as officials battle a second wave of the outbreak.", url: "www.facebook.com", urlToImage: "https://static01.nyt.com/images/2020/11/24/nyregion/24nytoday-photo/24nytoday-photo-facebookJumbo.jpg", content: "")])
    let description = "Upper Manhattan and the southern part of Staten Island face stricter restrictions as officials battle a second wave of the outbreak."
    let title = "Coronavirus in N.Y.: Latest Updates"
    
    let samplePhoto = "https://static01.nyt.com/images/2020/11/24/nyregion/24nytoday-photo/24nytoday-photo-facebookJumbo.jpg"
    
    private var threeColumnGrid = [GridItem(.flexible()), GridItem(.flexible())]
    
    
    
    var body: some View {
        
        
        ScrollView {
            
            HStack(spacing: 40) {
                
                LazyVGrid(columns:threeColumnGrid) {
                    
                    
                    VStack {
                        HStack{
                            
                            ZStack{
                                
                                
                                Spacer()
                                    .frame(width: 200, height: 370)
                                    .background(Color.black)
                                    .cornerRadius(30)
                                    .shadow(radius: 4)
                                  
                                
                                
                                
                                NavigationLink(
                                    destination: NewsDetailView(),
                                    label: {
                                        VStack {
                                            
                                            
                                            
                                            
                                            KFImage(URL(string:  samplePhoto))
                                                .resizable()
                                                .frame(width: 200 , height: 140 )
                                                .cornerRadius(12)
                                                .padding(.top)
                                            
                                            
                                            HStack(alignment: .firstTextBaseline) {
                                                Text(vm.nytimesnews?.response.docs[0].headline.main ?? title)
                                                    .frame(width: 150, height: 150, alignment: .center)
                                                    .font(.system(size: 17, weight: .bold))
                                                    .foregroundColor(.white)
                                                    .padding()
                                                
                                                
                                            }.padding(.horizontal)
                                            .padding(.top)
                                            
                                            
                                            
                                        }
                                    })
                                
                            }
                            
                            
                        }
                        
                        
                        
                    }
                    VStack {
                        HStack{
                            
                            ZStack{
                                
                                
                                Spacer()
                                    .frame(width: 200, height: 370)
                                    .background(Color.black)
                                    .cornerRadius(30)
                                    .shadow(radius: 4)
                                
                                
                                
                                NavigationLink(
                                    destination: NewsDetailView(),
                                    label: {
                                        VStack {
                                            
                                            
                                            
                                            
                                            KFImage(URL(string: samplePhoto))
                                                .resizable()
                                                .frame(width: 200 , height: 140 )
                                                .cornerRadius(12)
                                                .padding(.top)
                                            
                                            
                                            HStack(alignment: .firstTextBaseline) {
                                                Text(vm.nytimesnews?.response.docs[1].headline.main ?? title)
                                                    .frame(width: 150, height: 150, alignment: .center)
                                                    .font(.system(size: 17, weight: .bold))
                                                    .foregroundColor(.white)
                                                    .padding()
                                                
                                                
                                            }.padding(.horizontal)
                                            
                                            
                                            
                                        }
                                    })
                                
                            }
                            
                            
                        }
                        
                        
                        
                    }
                    VStack {
                        HStack{
                            
                            ZStack{
                                
                                
                                Spacer()
                                    .frame(width: 200, height: 370)
                                    .background(Color.black)
                                    .cornerRadius(30)
                                    .shadow(radius: 4)
                                
                                
                                
                                NavigationLink(
                                    destination: NewsDetailView(),
                                    label: {
                                        VStack {
                                            
                                            
                                            
                                            
                                            KFImage(URL(string: samplePhoto))
                                                .resizable()
                                                .frame(width: 200 , height: 140 )
                                                .cornerRadius(12)
                                                .padding(.top)
                                            
                                            
                                            
                                            HStack(alignment: .firstTextBaseline) {
                                                Text(vm.nytimesnews?.response.docs[2].headline.main ?? title)
                                                    .frame(width: 150, height: 150, alignment: .center)
                                                    .font(.system(size: 17, weight: .bold))
                                                    .foregroundColor(.white)
                                                    .padding()
                                                
                                                
                                                
                                            }.padding(.horizontal)
                                            .padding(.top)
                                            
                                            
                                        }
                                    })
                                
                            }
                            
                            
                        }
                        
                        
                        
                    }
                    VStack {
                        HStack{
                            
                            ZStack{
                                
                                
                                Spacer()
                                    .frame(width: 200, height: 370)
                                    .background(Color.black)
                                    .cornerRadius(30)
                                    .shadow(radius: 4)
                                
                                
                                
                                NavigationLink(
                                    destination: NewsDetailView(),
                                    label: {
                                        VStack {
                                            
                                            
                                            
                                            
                                            KFImage(URL(string: samplePhoto))
                                                .resizable()
                                                .frame(width: 200 , height: 140 )
                                                .cornerRadius(12)
                                                .padding(.top)
                                            
                                            
                                            
                                            HStack(alignment: .firstTextBaseline) {
                                                Text(vm.nytimesnews?.response.docs[3].headline.main ?? title)
                                                    .frame(width: 150, height: 150, alignment: .center)
                                                    .font(.system(size: 17, weight: .bold))
                                                    .foregroundColor(.white)
                                                    .padding()
                                                
                                                
                                            }.padding(.horizontal)
                                            .padding(.top)
                                            
                                            
                                        }
                                    })
                                
                            }
                            
                            
                        }
                        
                        
                        
                    }
                    VStack {
                        HStack{
                            
                            ZStack{
                                
                                
                                Spacer()
                                    .frame(width: 200, height: 370)
                                    .background(Color.black)
                                    .cornerRadius(30)
                                    .shadow(radius: 4)
                                
                                
                                
                                NavigationLink(
                                    destination: NewsDetailView(),
                                    label: {
                                        VStack {
                                            
                                            
                                            
                                            
                                            KFImage(URL(string: samplePhoto))
                                                .resizable()
                                                .frame(width: 200 , height: 140 )
                                                .cornerRadius(12)
                                                .padding(.top)
                                            
                                            
                                            HStack(alignment: .firstTextBaseline) {
                                                Text(vm.nytimesnews?.response.docs[4].headline.main ?? title)
                                                    .frame(width: 150, height: 150, alignment: .center)
                                                    .font(.system(size: 17, weight: .bold))
                                                    .foregroundColor(.white)
                                                    .padding()
                                                
                                                
                                            }.padding(.horizontal)
                                            .padding(.top)
                                            
                                            
                                        }
                                    })
                                
                            }
                            
                            
                        }
                        
                        
                        
                    }
                    VStack {
                        HStack{
                            
                            ZStack{
                                
                                
                                Spacer()
                                    .frame(width: 200, height: 370)
                                    .background(Color.black)
                                    .cornerRadius(30)
                                    .shadow(radius: 4)
                                
                                
                                
                                NavigationLink(
                                    destination: NewsDetailView(),
                                    label: {
                                        VStack {
                                            
                                            
                                            
                                            
                                            KFImage(URL(string: samplePhoto))
                                                .resizable()
                                                .frame(width: 200 , height: 140 )
                                                .cornerRadius(12)
                                                .padding(.top)
                                            
                                            
                                            
                                            HStack(alignment: .firstTextBaseline) {
                                                Text(vm.nytimesnews?.response.docs[5].headline.main ?? title)
                                                    .frame(width: 150, height: 150, alignment: .center)
                                                    .font(.system(size: 17, weight: .bold))
                                                    .foregroundColor(.white)
                                                    .padding()
                                                
                                                
                                            }.padding(.horizontal)
                                            .padding(.top)
                                            
                                            
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





struct StateNewsCard_Previews: PreviewProvider {
    static var previews: some View {
    
        NavigationView {
        StateNewsCard()
        }
        
    }
}
