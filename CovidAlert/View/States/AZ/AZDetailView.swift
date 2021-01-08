//
//  AZDetailView.swift
//  CovidAlert
//
//  Created by Matthew Garlington on 12/27/20.
//

import SwiftUI

struct AZDetailView: View {
    @ObservedObject var vm = AZDetailViewModel()
    

    

    
    var body: some View {
        NavigationView {
            GeometryReader { proxy in
                ScrollView {
        
                    AZTwitterCardView()
                    
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
                    }.navigationTitle("Arizona")
                 
             
                    
                    
                }
                
                
        
            } .background(LinearGradient(gradient: Gradient(colors: [Color.init(#colorLiteral(red: 0.3028137088, green: 0.2979239523, blue: 0.7478307486, alpha: 1)), Color.init(#colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1))]), startPoint: .bottom, endPoint: .top))
            .cornerRadius(7)
        }.navigationBarTitle("Arizona", displayMode: .inline)
      
    }
}






struct AZDetailView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            AZDetailView()
        }
    }
}
