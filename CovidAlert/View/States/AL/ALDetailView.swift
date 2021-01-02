//
//  MDDetailView.swift
//  CovidAlert
//
//  Created by Matthew Garlington on 12/27/20.
//

import SwiftUI


struct ALDetailView: View {
    @ObservedObject var vm = ALDetailViewModel()
    

    

    
    var body: some View {
        NavigationView {
            GeometryReader { proxy in
                ScrollView {
        
                    TwitterCardView()
                    
                    VStack {
                     
             
                      
                        ScrollView(.horizontal, showsIndicators: false, content: {
                            
                           
                            
                            
                            HStack{
//                                ForEach(0..<1, id: \.self) { num in
                               
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
                                            Text("\(vm.allStateDetails?.death.formatNumber() ?? "" )")
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
                                            Text("\(vm.allStateDetails?.positive.formatNumber() ?? "")")
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
                                            Text("\(vm.allStateDetails?.deathIncrease.formatNumber() ?? "")")
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
                                            Text("\(vm.allStateDetails?.hospitalizedIncrease.formatNumber() ?? "")")
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
                                            Text("\(vm.allStateDetails?.positiveIncrease.formatNumber() ?? "")")
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
                                            Text("NA")
                                        .font(.system(size: 35))
                                        .fontWeight(.bold)
                                        }
                                }
                                    
                                
                                }
                            
                            
                            }.padding(.top)
                            

                            
                            })
                        StateNewsView()
                    }.navigationTitle("Alabama")
                 
             
                    
                    
                }
                
                
        
            }  .background(LinearGradient(gradient: Gradient(colors: [Color.blue, Color.white]), startPoint: .bottom, endPoint: .top))
            .cornerRadius(7)
        }.navigationBarTitle("Alabama", displayMode: .inline)
      
    }
}






struct ALDetailView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            ALDetailView()
        }
    }
}

