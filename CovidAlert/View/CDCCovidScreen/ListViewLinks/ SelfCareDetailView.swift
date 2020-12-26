//
//   SelfCareDetailView.swift
//  CovidAlert
//
//  Created by Matthew Garlington on 12/25/20.
//

import SwiftUI

struct SelfCareDetailView: View {
    let BodyCareCell = [
        CellView4(image: "flame.fill", circleColor: .red, imageColor: .white, title: "Care For Your Body", body: "One of the best ways to protect yourself from getting sick is to maintain your physical health")
    ]
    
    let MentalHealthCareCell = [
        CellView4(image: "face.smiling.fill", circleColor: .yellow, imageColor: .white, title: "Look After Your Mental Health", body: "Dealing with this emergency is mentally challenging. You may feel increased sadness, stress, or loneliness. There are ways to support yourself.")
    ]
    
    let ShopWisleyCell = [
        CellView4(image: "cart.fill", circleColor: .green, imageColor: .white, title: "Shop Wisely", body: "Know the best practices for shopping for essentials.")
    ]
    
    let StrategiesForWorkCell = [
        CellView4(image: "network", circleColor: .blue, imageColor: .white, title: "Strategies for Work", body: "How to stay safe, and sane, whether you're working from home, going into work, or unemployed.")
    ]
    
    let HouseHoldEmergencyPlanCell = [
        CellView4(image: "house.fill", circleColor: .purple, imageColor: .white, title: "Create a Household Emergency Plan", body: "Be prepared in case you catch the virus.")
    ]
   
    let CovidContractionsCell = [
        CellView4(image: "bolt.heart.fill", circleColor: .red, imageColor: .white, title: "What To Do If You Get COVID-19", body: "A doctor might advise you to recover at home if you are mildly sick.")
    ]
    
  
    @State var showingDetail = false
    
    var body: some View {
        ScrollView {
        VStack {
           
            VStack(alignment: .leading) {
                Text("Supporting Yourself")
                    .font(.system(size: 35, weight: .bold))
                    .padding(.bottom)
                Text("Tips for keeping yourself physically and mentally healthy.")
                    .font(.system(size: 20))
            } .padding(.horizontal)
           
            ZStack {
                Spacer()
                    .frame(width: 385, height: 170)
                    .background(Color(.init(white: 1, alpha: 1)))
                    .cornerRadius(20)
                    .shadow(radius: 3)
                    .padding()
            
            
                HStack {
                    ForEach(BodyCareCell, id: \.self) { cell in
                    ZStack {
                Circle()
                    .foregroundColor(cell.circleColor)
                    .frame(width: 34)
            
                        Image(systemName: cell.image)
                            .foregroundColor(cell.imageColor)
                    }.padding(.bottom, 115)
               
              
                    VStack(alignment: .leading) {
                        Text(cell.title)
                        .fontWeight(.semibold)
                        .font(.system(size: 20))
                     
                        Text(cell.body)
                
                        VStack(alignment: .leading) {
                            Button(action: {self.showingDetail.toggle()}, label: {
                            Text("Learn More")
                                .fontWeight(.semibold)
                        }).sheet(isPresented: $showingDetail) {
                            WhatIsCovidDetailView()
                        }
                         
                            .padding()
                       
                        }
                    }.frame(width: 300)
                 
                }
            }
            
        }
            ZStack {
                Spacer()
                    .frame(width: 385, height: 200)
                    .background(Color(.init(white: 1, alpha: 1)))
                    .cornerRadius(20)
                    .shadow(radius: 3)
                    .padding()
            
            
                HStack {
                    ForEach(MentalHealthCareCell, id: \.self) { cell in
                    ZStack {
                Circle()
                    .foregroundColor(cell.circleColor)
                    .frame(width: 34)
            
                        Image(systemName: cell.image)
                            .foregroundColor(cell.imageColor)
                    }.padding(.bottom, 115)
               
              
                    VStack(alignment: .leading) {
                        Text(cell.title)
                        .fontWeight(.semibold)
                        .font(.system(size: 20))
                      
                          
                        Text(cell.body)
                       
                        VStack(alignment: .leading) {
                            Button(action: {self.showingDetail.toggle()}, label: {
                            Text("Learn More")
                                .fontWeight(.semibold)
                        }).sheet(isPresented: $showingDetail) {
                            WhatIsCovidDetailView()
                        }
                         
                            .padding()
                       
                        }
                    }.frame(width: 300)
                    .padding(.top)
                }
            }
            
        }
            ZStack {
                Spacer()
                    .frame(width: 385, height: 200)
                    .background(Color(.init(white: 1, alpha: 1)))
                    .cornerRadius(20)
                    .shadow(radius: 3)
                    .padding()
            
            
                HStack {
                    ForEach(ShopWisleyCell, id: \.self) { cell in
                    ZStack {
                Circle()
                    .foregroundColor(cell.circleColor)
                    .frame(width: 34)
            
                        Image(systemName: cell.image)
                    .foregroundColor(.white)
                    }.padding(.bottom, 115)
               
              
                    VStack(alignment: .leading) {
                        Text(cell.title)
                        .fontWeight(.semibold)
                        .font(.system(size: 20))
                       
                        Text(cell.body)
                
                        VStack(alignment: .leading) {
                            Button(action: {self.showingDetail.toggle()}, label: {
                            Text("Learn More")
                                .fontWeight(.semibold)
                        }).sheet(isPresented: $showingDetail) {
                            WhatIsCovidDetailView()
                        }
                         
                            .padding()
                       
                        }
                    }.frame(width: 300)
                    .padding(.top)
                }
            }
            
        }
            ZStack {
                Spacer()
                    .frame(width: 385, height: 230)
                    .background(Color(.init(white: 1, alpha: 1)))
                    .cornerRadius(20)
                    .shadow(radius: 3)
                    .padding()
            
            
                HStack {
                    ForEach(StrategiesForWorkCell, id: \.self) { cell in
                    ZStack {
                Circle()
                    .foregroundColor(cell.circleColor)
                    .frame(width: 34)
            
                        Image(systemName: cell.image)
                    .foregroundColor(.white)
                    }.padding(.bottom, 115)
               
              
                    VStack(alignment: .leading) {
                        Text(cell.title)
                        .fontWeight(.semibold)
                        .font(.system(size: 20))
                    
                        Text(cell.body)
                
                        VStack(alignment: .leading) {
                            Button(action: {self.showingDetail.toggle()}, label: {
                            Text("Learn More")
                                .fontWeight(.semibold)
                        }).sheet(isPresented: $showingDetail) {
                            WhatIsCovidDetailView()
                        }
                         
                            .padding()
                       
                        }
                    }.frame(width: 300, height: 250)
                    .padding()
                }
            }
            
        }
            ZStack {
                Spacer()
                    .frame(width: 385, height: 200)
                    .background(Color(.init(white: 1, alpha: 1)))
                    .cornerRadius(20)
                    .shadow(radius: 3)
                    .padding()
            
            
                HStack {
                    ForEach(HouseHoldEmergencyPlanCell, id: \.self) { cell in
                    ZStack {
                Circle()
                    .foregroundColor(cell.circleColor)
                    .frame(width: 34)
            
                        Image(systemName: cell.image)
                    .foregroundColor(.white)
                    }.padding(.bottom, 115)
               
              
                    VStack(alignment: .leading) {
                        Text(cell.title)
                        .fontWeight(.semibold)
                        .font(.system(size: 20))
                    
                        Text(cell.body)
                
                        VStack(alignment: .leading) {
                            Button(action: {self.showingDetail.toggle()}, label: {
                            Text("Learn More")
                                .fontWeight(.semibold)
                        }).sheet(isPresented: $showingDetail) {
                            WhatIsCovidDetailView()
                        }
                         
                            .padding()
                       
                        }
                    }.frame(width: 300)
                    .padding()
                }
            }
            
        }
            ZStack {
                Spacer()
                    .frame(width: 385, height: 175)
                    .background(Color(.init(white: 1, alpha: 1)))
                    .cornerRadius(20)
                    .shadow(radius: 3)
                    .padding()
            
            
                HStack {
                    ForEach(CovidContractionsCell, id: \.self) { cell in
                    ZStack {
                Circle()
                    .foregroundColor(cell.circleColor)
                    .frame(width: 34)
            
                        Image(systemName: cell.image)
                    .foregroundColor(.white)
                    }.padding(.bottom, 115)
               
              
                    VStack(alignment: .leading) {
                        Text(cell.title)
                        .fontWeight(.semibold)
                        .font(.system(size: 20))
                    
                        Text(cell.body)
                
                        VStack(alignment: .leading) {
                            Button(action: {self.showingDetail.toggle()}, label: {
                            Text("Learn More")
                                .fontWeight(.semibold)
                        }).sheet(isPresented: $showingDetail) {
                            WhatIsCovidDetailView()
                        }
                         
                            .padding()
                       
                        }
                    }.frame(width: 300)
                    .padding()
                }
            }
            
        }
            
        }
        } .background(
            LinearGradient(gradient: Gradient(colors: [Color(.systemBackground), Color(.systemGray4)]), startPoint: .top, endPoint: .bottom))
        
    }
}
    

struct SelfCareDetailView_Previews: PreviewProvider {
    static var previews: some View {
        SelfCareDetailView()
    }
}
struct CellView4: Hashable {
    
    let image: String
    let circleColor: Color
    let imageColor: Color
    let title: String
    let body: String
}
