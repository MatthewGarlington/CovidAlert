//
//  CTDetailView.swift
//  CovidAlert
//
//  Created by Matthew Garlington on 12/27/20.
//

import SwiftUI

struct CTDetailView: View {
    @ObservedObject var vm = CTDetailViewModel()
    

    

    
    var body: some View {
        NavigationView {
            GeometryReader { proxy in
                ScrollView {
        
                    TwitterCardView()
                    
                    VStack {
                     
             
                      
                        ScrollView(.horizontal, showsIndicators: false, content: {
                            
                           
                            HStack{

                               
                                LazyVStack {
                                
                                    ZStack {
                                    Spacer()
                                        .frame(width: 175, height: 150)
                                        .background(Color(.init(white: 0.95, alpha: 1)))
                                        .cornerRadius(12)
                                        .shadow(radius: 4)
                                        .padding(.horizontal)
                                        LazyVStack {
                                    Text("Deaths")
                                        .font(.system(size: 20))
                                        .font(.headline)
                                            Spacer()
                                            Text("\(vm.allStateDetails?.death.formatNumber() ?? "NA" )")
                                        .font(.system(size: 35))
                                        .fontWeight(.bold)
                                                
                                        
                                        }
                                    
                                    }
                                    ZStack {
                                    Spacer()
                                        .frame(width: 175, height: 150)
                                        .background(Color(.init(white: 0.95, alpha: 1)))
                                        .cornerRadius(12)
                                        .shadow(radius: 4)
                                        .padding(.top)
                                        LazyVStack {
                                    Text("Positive")
                                        .font(.system(size: 20))
                                        .font(.headline)
                                            Spacer()
                                            Text("\(vm.allStateDetails?.positive.formatNumber() ?? "NA")")
                                        .font(.system(size: 35))
                                        .fontWeight(.bold)
                                        }
                                    
                                    }
                                    ZStack {
                                    Spacer()
                                        .frame(width: 175, height: 150)
                                        .background(Color(.init(white: 0.95, alpha: 1)))
                                        .cornerRadius(12)
                                        .shadow(radius: 4)
                                        .padding(.all)
                                        LazyVStack {
                                    Text("Death Increase")
                                        .font(.system(size: 20))
                                        .font(.headline)
                                            Spacer()
                                            Text("\(vm.allStateDetails?.deathIncrease.formatNumber() ?? "Na")")
                                        .font(.system(size: 35))
                                        .fontWeight(.bold)
                                        }
                                }
                                }
                                LazyVStack {
                                    ZStack {
                                    Spacer()
                                        .frame(width: 175, height: 150)
                                        .background(Color(.init(white: 0.95, alpha: 1)))
                                        .cornerRadius(12)
                                        .shadow(radius: 4)
                                       .padding(.horizontal)
                                        LazyVStack {
                                    Text("Hospitalized New")
                                        .font(.system(size: 18))
                                        .font(.headline)
                                            Spacer()
                                            Text("\(vm.allStateDetails?.hospitalizedIncrease.formatNumber() ?? "NA")")
                                        .font(.system(size: 35))
                                        .fontWeight(.bold)
                                        }
                                }
                                    
                                    ZStack {
                                    Spacer()
                                        .frame(width: 175, height: 150)
                                        .background(Color(.init(white: 0.95, alpha: 1)))
                                        .cornerRadius(12)
                                        .shadow(radius: 4)
                                        .padding(.top)
                                        LazyVStack {
                                    Text("Positive Increase")
                                        .font(.system(size: 18))
                                        .font(.headline)
                                            Spacer()
                                            Text("\(vm.allStateDetails?.positiveIncrease.formatNumber() ?? "NA")")
                                        .font(.system(size: 35))
                                        .fontWeight(.bold)
                                        }
                                }
                                    ZStack {
                                    Spacer()
                                        .frame(width: 175, height: 150)
                                        .background(Color(.init(white: 0.95, alpha: 1)))
                                        .cornerRadius(12)
                                        .shadow(radius: 4)
                                        .padding(.all)
                                        LazyVStack {
                                    Text("Hospitalized")
                                        .font(.system(size: 20))
                                        .font(.headline)
                                            Spacer()
                                            Text("\(vm.allStateDetails?.hospitalizedCurrently.formatNumber() ?? "NA")")
                                        .font(.system(size: 35))
                                        .fontWeight(.bold)
                                        }
                                }
                                    
                                
                                }
                            
                            
                            }.padding(.top)
                            

                            
                            })
                        StateNewsView()
                    }.navigationTitle("Connecticut")
                 
             
                    
                    
                }
                
                
        
            }  .background(LinearGradient(gradient: Gradient(colors: [Color.blue, Color.white]), startPoint: .bottom, endPoint: .top))
            .cornerRadius(7)
        }.navigationBarTitle("Connecticut", displayMode: .inline)
      
    }
}






struct CTDetailView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            CTDetailView()
        }
    }
}
