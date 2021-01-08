//
//  CovidTestingView.swift
//  CovidAlert
//
//  Created by Matthew Garlington on 12/25/20.
//

import SwiftUI

struct CovidTestingView: View {

        let ShouldYouGetTestedCell = [
            CellView2(image: "rectangle.stack.person.crop.fill", circleColor: .gray, imageColor: .white, title: "Should you get tested?", body: "Knowing when to get tested can keep testing resources available for those who need it most.")
        ]
        
        let HowToGetTestedCell = [
            CellView2(image: "doc.text.below.ecg.fill", circleColor: .red, imageColor: .white, title: "How do I get tested?", body: "Your doctor or state or local health department will decide if you should be tested.")
        ]
        
        let TestResultsCell = [
            CellView2(image: "doc.text.below.ecg.fill", circleColor: .green, imageColor: .white, title: "What Can I expect from test results?", body: "Testing can identify if you have the virus that causes COVID-19.")
        ]
        
        let WaitingOnTestCell = [
            CellView2(image: "clock.arrow.circlepath", circleColor: .yellow, imageColor: .white, title: "What can I do while waiting for test results?", body: "The Turnaround time for testing varies between testing sites.")
        ]
        
       
    @State var showingDetail = false
    @State var showingGetTestedDetail = false
    @State var showingTestResultsDetail = false
    @State var showingResultsTimingDetail = false
    @State var showingWaitingOnResultsDetail = false
    
    var body: some View {
        ScrollView {
        VStack {
           
            VStack(alignment: .leading) {
                Text("COVID-19 Testing")
                    .font(.system(size: 38, weight: .bold))
                    .padding(.bottom)
                
                Text("Current guidance on who should be tested and what to expect from test results.")
                    .font(.system(size: 20))
              
            }      .padding(.horizontal)
            ZStack {
                Spacer()
                    .frame(width: 385, height: 170)
                    .background(Color(.init(white: 1, alpha: 1)))
                    .cornerRadius(20)
                    .shadow(radius: 3)
                    .padding()
            
            
                HStack {
                    ForEach(ShouldYouGetTestedCell, id: \.self) { cell in
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
                            Button(action: {self.showingGetTestedDetail.toggle()}, label: {
                            Text("Learn More")
                                .fontWeight(.semibold)
                        }).sheet(isPresented: $showingGetTestedDetail) {
                            ShouldYouGetTestedSheetView()
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
                    ForEach(HowToGetTestedCell, id: \.self) { cell in
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
                            Button(action: {self.showingTestResultsDetail.toggle()}, label: {
                            Text("Learn More")
                                .fontWeight(.semibold)
                        }).sheet(isPresented: $showingTestResultsDetail) {
                            TestResultsSheetsView()
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
                    ForEach(TestResultsCell, id: \.self) { cell in
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
                            Button(action: {self.showingResultsTimingDetail.toggle()}, label: {
                            Text("Learn More")
                                .fontWeight(.semibold)
                        }).sheet(isPresented: $showingResultsTimingDetail) {
                            WhenResultsSheetView()
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
                    ForEach(WaitingOnTestCell, id: \.self) { cell in
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
                            Button(action: {self.showingWaitingOnResultsDetail.toggle()}, label: {
                            Text("Learn More")
                                .fontWeight(.semibold)
                        }).sheet(isPresented: $showingWaitingOnResultsDetail) {
                            WaitingOnTestResultsSheetView()
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

struct CovidTestingView_Previews: PreviewProvider {
    static var previews: some View {
        CovidTestingView()
    }
}

struct CellView3: Hashable {
    
    let image: String
    let circleColor: Color
    let imageColor: Color
    let title: String
    let body: String
}
