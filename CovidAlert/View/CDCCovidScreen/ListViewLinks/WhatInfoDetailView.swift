//
//  WhatInfoDetailView.swift
//  CovidAlert
//
//  Created by Matthew Garlington on 12/25/20.
//

import SwiftUI

struct WhatInfoDetailView: View {
    let WashingHandsCell = [
        CellView2(image: "star.fill", circleColor: .green, imageColor: .white, title: "Washing Your Hands", body: "Washing your hands is the best way to help you stay healthy. Here's how to do it.")
    ]
    
    let PhysicalDistancingCell = [
        CellView2(image: "die.face.2.fill", circleColor: .blue, imageColor: .white, title: "Physical Distancing", body: "The virus spreads from person to person. Physical distancing means putting space between yourself and people outside your home to prevent the transmission of the disease")
    ]
    
    let QuarantiningCell = [
        CellView2(image: "die.face.1.fill", circleColor: .pink, imageColor: .white, title: "Quarantining", body: "If you think you might have been exposed to COVID-19, quarantine yourself. The purpose of this practice is to seperate yourself from others and restrict your movement while waiting to see if you become sick")
    ]
    
    let IsolatingCell = [
        CellView2(image: "die.face.1", circleColor: .purple, imageColor: .white, title: "Isolating", body: "If you are sick with COVID-18 or have symptoms, isolate yourself. The purpose of isolation is to prevent spreading the infection to others by keeping sick people seperated from healthy people.")
    ]
    
    let SymtomMonitoringCell = [
        CellView2(image: "cross.case.fill", circleColor: .red, imageColor: .white, title: "Symptom Monitoring", body: "Keep track of your symptoms if you suspect you have COVID-19, have been around someone who has tested positive for it, or you've been diagnosed")
    ]
   
    let CleaningCell = [
        CellView2(image: "wand.and.stars.inverse", circleColor: .yellow, imageColor: .white, title: "Cleaning and Disinfecting Surfaces", body: "Commonly used surfaces should be regularly cleaned and disinfected.")
    ]
    
    let FaceMaskCell = [
        CellView2(image: "shield.lefthalf.fill", circleColor: .green, imageColor: .white, title: "Wearing a Cloth Face Covering", body: "Using a cloth mask can protect yourself and others from germs and help slow the spread.")
    ]
    
    @State var showingDetail = false
    @State var showingWashingDetail = false
    @State var showingPhysicalDistancingDetail = false
    @State var showingQuarantiningDetail = false
    @State var showingIsolateDetail = false
    @State var showingSymptomDetail = false
    @State var showingCleaningDetail = false
    @State var showingFaceMaskDetail = false
   
    var body: some View {
        
        ScrollView {
        VStack {
           
            VStack(alignment: .leading) {
                Text("What You Can Do")
                    .font(.system(size: 35, weight: .bold))
                
                Text("Information about hand-washing, physical distancing, isolating from others, and more.")
                    .font(.system(size: 20))
            }
            ZStack {
                Spacer()
                    .frame(width: 385, height: 170)
                    .background(Color(.init(white: 1, alpha: 1)))
                    .cornerRadius(20)
                    .shadow(radius: 3)
                    .padding()
            
            
                HStack {
                    ForEach(WashingHandsCell, id: \.self) { cell in
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
                            Button(action: {self.showingWashingDetail.toggle()}, label: {
                            Text("Learn More")
                                .fontWeight(.semibold)
                        }).sheet(isPresented: $showingWashingDetail) {
                            WashingHandsInfoSheets()
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
                    ForEach(PhysicalDistancingCell, id: \.self) { cell in
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
                            Button(action: {self.showingPhysicalDistancingDetail.toggle()}, label: {
                            Text("Learn More")
                                .fontWeight(.semibold)
                        }).sheet(isPresented: $showingPhysicalDistancingDetail) {
                            PhysicalDistancingSheetView()
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
                    .frame(width: 385, height: 250)
                    .background(Color(.init(white: 1, alpha: 1)))
                    .cornerRadius(20)
                    .shadow(radius: 3)
                    .padding()
            
            
                HStack {
                    ForEach(QuarantiningCell, id: \.self) { cell in
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
                            Button(action: {self.showingQuarantiningDetail.toggle()}, label: {
                            Text("Learn More")
                                .fontWeight(.semibold)
                        }).sheet(isPresented: $showingQuarantiningDetail) {
                            QuarantiningSheetView()
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
                    ForEach(IsolatingCell, id: \.self) { cell in
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
                            Button(action: {self.showingIsolateDetail.toggle()}, label: {
                            Text("Learn More")
                                .fontWeight(.semibold)
                        }).sheet(isPresented: $showingIsolateDetail) {
                            IsolatingSheetView()
                        }
                            .padding()
                       
                        }
                    }.frame(width: 300, height: 250)
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
                    ForEach(SymtomMonitoringCell, id: \.self) { cell in
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
                            Button(action: {self.showingSymptomDetail.toggle()}, label: {
                            Text("Learn More")
                                .fontWeight(.semibold)
                        }).sheet(isPresented: $showingSymptomDetail) {
                            SymptomMonitoringSheetView()
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
                    .frame(width: 385, height: 175)
                    .background(Color(.init(white: 1, alpha: 1)))
                    .cornerRadius(20)
                    .shadow(radius: 3)
                    .padding()
            
            
                HStack {
                    ForEach(CleaningCell, id: \.self) { cell in
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
                            Button(action: {self.showingCleaningDetail.toggle()}, label: {
                            Text("Learn More")
                                .fontWeight(.semibold)
                        }).sheet(isPresented: $showingCleaningDetail) {
                            CleaningInfoSheetView()
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
                    .frame(width: 385, height: 175)
                    .background(Color(.init(white: 1, alpha: 1)))
                    .cornerRadius(20)
                    .shadow(radius: 3)
                    .padding()
            
            
                HStack {
                    ForEach(FaceMaskCell, id: \.self) { cell in
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
                            Button(action: {self.showingFaceMaskDetail.toggle()}, label: {
                            Text("Learn More")
                                .fontWeight(.semibold)
                        }).sheet(isPresented: $showingFaceMaskDetail) {
                            FaceMaskSheetView()
                        }
                            .padding()
                       
                        }
                    }.frame(width: 300)
                    .padding(.top)
                }
            }
            
        }
        }
        } .background(
            LinearGradient(gradient: Gradient(colors: [Color(.systemBackground), Color(.systemGray4)]), startPoint: .top, endPoint: .bottom))
        
    }
}

struct WhatInfoDetailView_Previews: PreviewProvider {
    static var previews: some View {
        WhatInfoDetailView()
    }
}

struct CellView2: Hashable {
    
    let image: String
    let circleColor: Color
    let imageColor: Color
    let title: String
    let body: String
}
