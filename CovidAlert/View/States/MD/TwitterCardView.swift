//
//  TwitterCardView.swift
//  CovidAlert
//
//  Created by Matthew Garlington on 12/19/20.
//

import SwiftUI


struct TwitterCardView: View {
    var body: some View {
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack{
                    ForEach(0..<4, id: \.self) { num in
                        ZStack{
                            Spacer()
                                .frame(width: 400, height: 350)
                                .background(Color(.init(white: 0.95, alpha: 1)))
                                .cornerRadius(25)
                                .shadow(radius: 4)
                                .padding(.horizontal)
                            VStack(alignment: .leading) {
                               
                                HStack(spacing: 25) {
                            
                            Image("Hogan")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 100, height: 100)
                                .background(Color(.init(white: 0.85, alpha: 1)))
                                .clipShape(Circle())
                                .shadow(radius: 6)
                                .padding(.top)
                                .padding(.horizontal, 25)
                            
                                
                          VStack {
                            Spacer()
                            Text("Governor Larry Hogan")
                                .bold()
                                
                            Text("@GovLarryHogan")
                                .foregroundColor(Color(.init(white: 0.55, alpha: 1)))
                      
                          }
                                }
                        
                            Text("Our message is simple: you are safer at home for the holidays this year. Making difficult sacrifices during these next few weeks will help to keep your family, loved ones, and your fellow Marylanders safe")
                                .font(.system(size: 20))
                                .fontWeight(.regular)
                                .frame(width: 390, height: 150)
                                .padding(.horizontal)
                           
                            Text("7:21 PM - Dec 17, 2020 - Twitter for Iphone")
                                .foregroundColor(Color(.init(white: 0.55, alpha: 1)))
                                
                                .padding(.bottom)
                                .padding(.horizontal, 40)
                                
                                HStack(alignment: .center, spacing: 50) {
                                    HStack{
                                        
                                        Image(systemName: "bubble.left")
                                        Text("160")
                                            .font(.system(size: 15))
                                        
                                        
                                    }
                                    HStack{
                                        Image(systemName: "return")
                                        Text("62")
                                            .font(.system(size: 15))
                                        
                                    }
                                    HStack{
                                        Image(systemName: "heart")
                                        Text("91")
                                            .font(.system(size: 15))
                                        
                                    }
                                    
                                    Image(systemName: "square.and.arrow.up")
                                    
                                    
                                }.padding(.bottom)
                       
                                .padding(.horizontal, 25)
                                
                                
                            }.padding(.top)
                        }
                        
                        }
                    }.padding(.bottom)
                    .padding(.top)
                }
               
    }
}

struct TwitterCardView_Previews: PreviewProvider {
    static var previews: some View {
        TwitterCardView()
    }
}
