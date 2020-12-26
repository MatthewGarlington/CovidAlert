//
//  AboutCovidDetailView.swift
//  CovidAlert
//
//  Created by Matthew Garlington on 12/25/20.
//

import SwiftUI

struct AboutCovidDetailView: View {
    let WhatCell = [
        CellView(image: "staroflife.fill", circleColor: .orange, imageColor: .white, title: "What is Covid-19?", body: "COVID-19 is a respirtatory disease caused by coronavirus that can be spread from person to person")
    ]
    
    let CovidSymptomCell = [
        CellView(image: "waveform.path.ecg", circleColor: .green, imageColor: .white, title: "What are Covid-19's symptoms?", body: "The most common symptoms are very similar to other viruses: fever, cough, and difficulty breathing.")
    ]
    
    let CovidRiskCell = [
        CellView(image: "person.2.fill", circleColor: .purple, imageColor: .white, title: "Who is at high risk for COVID-19?", body: "Everyone is at risk of getting COVID-19, but some people are at higher risk of serious illness.")
    ]
    
    let CoviPregnancyCell = [
        CellView(image: "person.3.fill", circleColor: .pink, imageColor: .white, title: "What about COVID-19, pregnancy, and newborns?", body: "At this time, pregnant women reportedly have the same COVID-19 risk as adults who are not pregnant. There is also no clear evidence that a fetus can be infected with COVID-19 in the womb.")
    ]
    
    let DoctorCell = [
        CellView(image: "staroflife.fill", circleColor: .red, imageColor: .white, title: "When should I see a Doctor?", body: "Knowing when to see a doctor can keep medical care available for those who need it most")
    ]
    
    @State var showingDetail = false
    
    
    var body: some View {
        
        ScrollView {
        VStack {
           
            VStack(alignment: .leading) {
                Text("About COVID-19")
                    .font(.system(size: 35, weight: .bold))
                
                Text("An up-to-date rundown of the virus and its symptoms")
                    .font(.system(size: 20))
            }
            ZStack {
                Spacer()
                    .frame(width: 385, height: 175)
                    .background(Color(.init(white: 1, alpha: 1)))
                    .cornerRadius(20)
                    .shadow(radius: 3)
                    .padding()
            
            
                HStack {
                    ForEach(WhatCell, id: \.self) { cell in
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
                    .frame(width: 385, height: 175)
                    .background(Color(.init(white: 1, alpha: 1)))
                    .cornerRadius(20)
                    .shadow(radius: 3)
                    .padding()
            
            
                HStack {
                    ForEach(CovidSymptomCell, id: \.self) { cell in
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
                    .frame(width: 385, height: 175)
                    .background(Color(.init(white: 1, alpha: 1)))
                    .cornerRadius(20)
                    .shadow(radius: 3)
                    .padding()
            
            
                HStack {
                    ForEach(CovidRiskCell, id: \.self) { cell in
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
                    .frame(width: 385, height: 300)
                    .background(Color(.init(white: 1, alpha: 1)))
                    .cornerRadius(20)
                    .shadow(radius: 3)
                    .padding()
            
            
                HStack {
                    ForEach(CoviPregnancyCell, id: \.self) { cell in
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
                    .frame(width: 385, height: 175)
                    .background(Color(.init(white: 1, alpha: 1)))
                    .cornerRadius(20)
                    .shadow(radius: 3)
                    .padding()
            
            
                HStack {
                    ForEach(DoctorCell, id: \.self) { cell in
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
struct WhatIsCovidDetailView: View {
    var body: some View {
        Text("Detail")
    }
}




struct AboutCovidDetailView_Previews: PreviewProvider {
    static var previews: some View {
        AboutCovidDetailView()
    }
}

struct CellView: Hashable {
    
    let image: String
    let circleColor: Color
    let imageColor: Color
    let title: String
    let body: String
}
