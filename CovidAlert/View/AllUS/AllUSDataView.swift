//
//  NewsDataView.swift
//  CovidAlert
//
//  Created by Matthew Garlington on 12/9/20.
//

import SwiftUI






struct AllUSDataView: View {
    
    @ObservedObject var vm = UsTotalViewModel()
    

  
    
   
    var body: some View {
        
        
            
        
        

            ScrollView(.horizontal, showsIndicators: false ) {
                HStack {
                   
        VStack(spacing: 20) {
            ForEach(vm.totalUS, id: \.self) { allUS in
         
                ZStack {
                Spacer()
                    .frame(width: 375, height: 100)
                    .background(Color(.init(white: 1, alpha: 0.9)))
                    .cornerRadius(30)
                    .shadow(color: Color.black.opacity(0.2), radius: 10, x: 10, y: 10)
                    .shadow(color: Color.white.opacity(0.7), radius: 10, x: -5, y: -5)
            
                    VStack(spacing: 20) {
               Text("Total US Cases")
                .font(.system(size: 30, weight: .semibold))
                .padding(.horizontal)
             
            
                        Text(allUS.positive.formatNumber())
                .font(.system(size: 27, weight: .bold))
                .padding(.horizontal)
                
                    }
              
                    .padding(.top)
                    .padding(.bottom)
                    
                        
                }
            
            ZStack {
            Spacer()
                .frame(width: 375, height: 100)
                .background(Color(.init(white: 1, alpha: 0.9)))
                .cornerRadius(30)
                .shadow(color: Color.black.opacity(0.2), radius: 10, x: 10, y: 10)
                .shadow(color: Color.white.opacity(0.7), radius: 10, x: -5, y: -5)
        
        
                VStack(spacing: 20) {
           Text("Total US Deaths")
            .font(.system(size: 30, weight: .semibold))
            .padding(.horizontal)
                    
           
        
            Text(allUS.death.formatNumber())
            .font(.system(size: 27, weight: .bold))
            .padding(.horizontal)                }
                }.padding(.top)
                .padding(.bottom)
            
            ZStack {
            Spacer()
                .frame(width: 375, height: 100)
                .background(Color(.init(white: 1, alpha: 0.9)))
                .cornerRadius(30)
                .shadow(color: Color.black.opacity(0.2), radius: 10, x: 10, y: 10)
                .shadow(color: Color.white.opacity(0.7), radius: 10, x: -5, y: -5)
     
                VStack(spacing: 20) {
           Text("Deaths Increase")
            .font(.system(size: 30, weight: .semibold))
            .padding(.horizontal)
        
           Text(allUS.deathIncrease.formatNumber())
            .font(.system(size: 27, weight: .bold))
            .padding(.horizontal)
                }
        }.padding(.top)
        .padding(.horizontal, 10)
        .padding(.bottom)
    }
        }
                    VStack(spacing: 20) {
                        ForEach(vm.totalUS, id: \.self) { allUS in
                     
                            ZStack {
                            Spacer()
                                .frame(width: 375, height: 100)
                                .background(Color(.init(white: 1, alpha: 0.9)))
                                .cornerRadius(30)
                                .shadow(color: Color.black.opacity(0.2), radius: 10, x: 10, y: 10)
                                .shadow(color: Color.white.opacity(0.7), radius: 10, x: -5, y: -5)
                        
                                VStack(spacing: 20) {
                           Text("On Ventilator")
                            .font(.system(size: 30, weight: .semibold))
                            .padding(.horizontal)
                        
                                    Text(allUS.onVentilatorCurrently.formatNumber())
                            .font(.system(size: 27, weight: .bold))
                            .padding(.horizontal)
                                        
                            
                                }.padding(.top)
                                .padding(.bottom)
                                    
                            }
                        
                        ZStack {
                        Spacer()
                            .frame(width: 375, height: 100)
                            .background(Color(.init(white: 1, alpha: 0.9)))
                            .cornerRadius(30)
                            .shadow(color: Color.black.opacity(0.2), radius: 10, x: 10, y: 10)
                            .shadow(color: Color.white.opacity(0.7), radius: 10, x: -5, y: -5)
                     
                            VStack(spacing: 20) {
                       Text("Hospitalized Increase")
                        .font(.system(size: 30, weight: .semibold))
                        .padding(.horizontal)
                    
                        Text(allUS.hospitalized.formatNumber())
                        .font(.system(size: 27, weight: .bold))
                        .padding(.horizontal)
                            }
                            }.padding(.top)
                            .padding(.bottom)
                        
                        ZStack {
                        Spacer()
                            .frame(width: 375, height: 100)
                            .background(Color(.init(white: 1, alpha: 0.9)))
                            .cornerRadius(30)
                            .shadow(color: Color.black.opacity(0.2), radius: 10, x: 10, y: 10)
                            .shadow(color: Color.white.opacity(0.7), radius: 10, x: -5, y: -5)
                      
                            VStack(spacing: 20) {
                       Text("Hospitalized Increase")
                        .font(.system(size: 30, weight: .semibold))
                        .padding(.horizontal)
                    
                       Text(allUS.hospitalizedIncrease.formatNumber())
                        .font(.system(size: 27, weight: .bold))
                        .padding(.horizontal)
                            }
                    }.padding(.top)
                    .padding(.horizontal, 10)
                    .padding(.bottom)
                            
                }
                    }
                    VStack(spacing: 30) {
                    ZStack {
                    Spacer()
                        .frame(width: 375, height: 100)
                        .background(Color(.init(white: 1, alpha: 0.9)))
                        .cornerRadius(30)
                        .shadow(color: Color.black.opacity(0.2), radius: 10, x: 10, y: 10)
                        .shadow(color: Color.white.opacity(0.7), radius: 10, x: -5, y: -5)

                        VStack(spacing: 20) {
                   Text("Suicide Increase")
                    .font(.system(size: 30, weight: .semibold))
                    .padding(.horizontal)
                
                    Text("200,000")
                    .font(.system(size: 27, weight: .bold))
                    .padding(.horizontal)
                        }
                        }.padding(.top)
                        .padding(.bottom)
                    
                    ZStack {
                    Spacer()
                        .frame(width: 375, height: 100)
                        .background(Color(.init(white: 1, alpha: 0.9)))
                        .cornerRadius(30)
                        .shadow(color: Color.black.opacity(0.2), radius: 10, x: 10, y: 10)
                        .shadow(color: Color.white.opacity(0.7), radius: 10, x: -5, y: -5)
           
                        VStack(spacing: 20) {
                   Text("Overdose Deaths")
                    .font(.system(size: 30, weight: .semibold))
                    .padding(.horizontal)
                
                   Text("150")
                    .font(.system(size: 27, weight: .bold))
                    .padding(.horizontal)
                            
                        }
                        
                    }
                        ZStack {
                        Spacer()
                            .frame(width: 375, height: 100)
                            .background(Color(.init(white: 1, alpha: 0.9)))
                            .cornerRadius(30)
                            .shadow(color: Color.black.opacity(0.2), radius: 10, x: 10, y: 10)
                            .shadow(color: Color.white.opacity(0.7), radius: 10, x: -5, y: -5)
        
                            VStack(spacing: 20) {
                       Text("Suicide Deaths")
                        .font(.system(size: 30, weight: .semibold))
                        .padding(.horizontal)
                    
                       Text("150")
                        .font(.system(size: 27, weight: .bold))
                        .padding(.horizontal)
                            }
                            .padding(.top)
                            .padding(.bottom)
                        }
                    
                }
                    .padding(.top)
                .padding(.horizontal, 10)
                .padding(.bottom, 35)
                } .padding(.horizontal)
                
                .background(LinearGradient(gradient: Gradient(colors: [.init(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)), .init(#colorLiteral(red: 0.9193099141, green: 0.90953511, blue: 0.9052304626, alpha: 1))]), startPoint: .bottom, endPoint: .top))
     
                
            }
        
}
}



struct AllUsDataView_Previews: PreviewProvider {
    static var previews: some View {
        AllUSDataView()
    }
}
