//
//  RecentTestingScreenerView.swift
//  CovidAlert
//
//  Created by Matthew Garlington on 12/28/20.
//

import SwiftUI



class ScreenerStatus: ObservableObject {
    @Published var IsPositiveSelected: Bool = false
    @Published var IsNegativeSelected: Bool = false
    @Published var isNonResultsSelected: Bool = false
    @Published var isNoTestSelected: Bool = false
    @Published var isFeverOrChillsSelected: Bool = false
    @Published var isDifficultyBreathingSelected: Bool = false
    @Published var isNewCoughSelected: Bool = false
    @Published var isLossOfSmellSelected: Bool = false
    @Published var isSoreThroatSelected: Bool = false
    @Published var isVomittingSelected: Bool = false
    @Published var isFatigueSelected: Bool = false
    @Published var isNoneOfTheseSymptomsSelected: Bool = false
    @Published var isLittleImpactSelected: Bool = false
    @Published var isSomeImpactSelected: Bool = false
    @Published var isMajorImpactSelected: Bool = false


    @Published var isObesitySelected: Bool = false
    @Published var isSmokerorVapingSelected: Bool = false
    @Published var isPregnantSelected: Bool = false
    @Published var isDiabetesSelected: Bool = false
    @Published var isChronicLungProblemsSelected: Bool = false
    @Published var isWeakendImmuneSystemSelected: Bool = false
    @Published var isStrokeSelected: Bool = false
    @Published var isSickleCellSelected: Bool = false
    @Published var isHeartConditionSelected: Bool = false
    @Published var isNoCombrobitiesSelected: Bool = false
    
    @Published var isLivedWithCovidPositivePersonSelected: Bool = false
    @Published var isCaredForCovidPositivePersonSelected: Bool = false
    @Published var isWithinSixFeetCovidSelected: Bool = false
    @Published var isMightHaveBeenExposedToCovidSelected: Bool = false
    @Published var isNoKnownExposureSelected: Bool = false
    
    @Published var isLiveInLongtermCareSelected: Bool = false
    @Published var isDontLiveInLongTermCareSelected: Bool = false
    
    @Published var isDidWorkOrVolunteerSelected: Bool = false
    @Published var isDidNotWorkOrVolunteerSelected: Bool = false
    

}
struct RecentTestingScreenerView: View {
    @State private var showNextPage: Bool = false
    @State var isPositive : Bool = false
    @State var isNegative : Bool = false
    @State var isNoResults : Bool = false
    @State var isNOTest : Bool = false
    @State private var didTap: Bool = false
    @ObservedObject var screenerStatus: ScreenerStatus
    
    
    
    
    
    var body: some View {
       
            VStack(spacing: 30) {
                Text("In the last 10 days, have you been tested for COVID-19?")
                    .font(.title)
                    .bold()
                    .frame(width: 400, height: 150)
                    .padding(.top, 10)

                Text("Only include your most recent saliva, oral swabs, or nasal swab test.")
                    .frame(width: 400, height: 50)
       
     
                
                VStack(spacing: 20) {
                    
                    Button(action: {
                        
                 //Toggle of other checked items upon click
                        
                        if self.isNegative == true {
                            
                            self.isNegative.toggle()
                        }
                        
                        else {
                            
                        }
                        
                        if self.isNOTest == true {
                            
                            self.isNOTest.toggle()
                        }
                        
                        else {
                            
                        }
                        
                        if self.isNoResults == true {
                            
                            self.isNoResults.toggle()
                        }
                        
                        else {
                            
                        }
                        
                        
                        
                        
                       
                        
                        
                        // Action to Display Check Mark when  button is pressed
                        
                        if self.isNoResults || self.isNegative || self.isNOTest == true {
                            
                           
                        }
                        else {
                            self.isPositive.toggle()
                        }
                     
                        
                        
                        // Tap Action for responding Next button
                        if
                            self.isPositive == true
                        {
                            self.didTap = true}
                        else {
                            self.didTap = false
                        }
                        
                        // Action to Add point to Score System depending on What is selected
                        if self.isPositive == true {
                           
                            self.screenerStatus.IsPositiveSelected = true
                            self.screenerStatus.IsNegativeSelected = false
                            self.screenerStatus.isNoTestSelected = false
                            self.screenerStatus.isNonResultsSelected = false
                            
                      
                        }
                        
                        else {
                            
                            self.screenerStatus.IsPositiveSelected = false
                            
                        }
                      
                        
                       
                        
                        
                        
                        
                        
                    }, label: {
                        ZStack {
                       
                            HStack(spacing: 10) {
                                Text("I was tested and my result was positive for COVID-19")
                                    .bold()
                                    .foregroundColor(.primary)
                                    .frame(width: 350, height: 50)
                                
                                
                                
                                Image(systemName: self.isPositive ? "checkmark.circle.fill" :  "circle")
                                    .foregroundColor(Color.init(#colorLiteral(red: 0.3067349494, green: 0.3018456101, blue: 0.7518180013, alpha: 1)))
                                    .font(.system(size: 25))
                                
                            }
                            
                            
                            
                        }.padding()
                    })
                    .buttonStyle(SimpleButtonStyle())
                   
                    
                    Button(action: {
                        
                        
                 //Toggle of other checked items upon click
                        
                        if self.isPositive == true {
                            
                            self.isPositive.toggle()
                        }
                        
                        else {
                            
                        }
                        
                        if self.isNOTest == true {
                            
                            self.isNOTest.toggle()
                        }
                        
                        else {
                            
                        }
                        
                        if self.isNoResults == true {
                            
                            self.isNoResults.toggle()
                        }
                        
                        else {
                            
                        }
                        // Action to Display Check Mark when  button is pressed
                        
                        if
                            self.isPositive || self.isNOTest || self.isNoResults == true {
                            
                        }
                        else {
                            
                            self.isNegative.toggle()
                            
                        }
                        
                        // Tap Action for responding Next button
                        if
                            self.isNegative == true
                        {
                            self.didTap = true}
                        else {
                            self.didTap = false
                        }
                        
                        // Action to Add point to Score System depending on What is selected
                        
                        if self.isNegative {
                            
                            self.screenerStatus.IsNegativeSelected = true
                            self.screenerStatus.IsPositiveSelected = false
                            self.screenerStatus.isNonResultsSelected = false
                            self.screenerStatus.isNoTestSelected = false
                            
                        }
                        
                        else {
                            self.screenerStatus.IsNegativeSelected = false
                        }
                        
                        
                    }, label: {
                        ZStack {
                  
                            HStack(spacing: 10) {
                                Text("I was tested and my result was negative for COVID-19")
                                    .bold()
                                    .foregroundColor(.primary)
                                    .frame(width: 350, height: 50)
                                
                                Image(systemName: self.isNegative ? "checkmark.circle.fill" :  "circle")
                                    .foregroundColor(Color.init(#colorLiteral(red: 0.3067349494, green: 0.3018456101, blue: 0.7518180013, alpha: 1)))
                                    .font(.system(size: 25))
                            }
                            
                            
                            
                        }.padding()
                    })                .buttonStyle(SimpleButtonStyle())
                    Button(action: {
                        
                        
                        //Toggle of other checked items upon click
                               
                        
                        if self.isPositive == true {
                            
                            self.isPositive.toggle()
                        }
                        
                        else {
                            
                        }
                        
                        if self.isNegative == true {
                            
                            self.isNegative.toggle()
                        }
                        
                        else {
                            
                        }
                        
                        if self.isNOTest == true {
                            
                            self.isNOTest.toggle()
                        }
                        
                        else {
                            
                        }
                        
                        
                        
                        
                        
                        
                        
                        // Action to Display Check Mark when  button is pressed
                        
                        if self.isNOTest || self.isPositive || self.isNegative == true {
                            
                            
                        }
                        else {
                            self.isNoResults.toggle()
                        }
                        
                        
                        // Tap Action for responding Next button
                        
                        if
                            self.isNoResults == true
                        {
                            self.didTap = true}
                        else {
                            self.didTap = false
                        }
                        
                        if self.isNoResults == true {
                            
                            self.screenerStatus.isNonResultsSelected = true
                            self.screenerStatus.IsNegativeSelected = false
                            self.screenerStatus.IsPositiveSelected = false
                            self.screenerStatus.isNoTestSelected = false
                        }
                        else {
                            self.screenerStatus.isNonResultsSelected = false
                        }
                        
                        
                        
                    }, label: {
                        ZStack {
           
      
                            HStack(spacing: 10) {
                                Text("I was tested but have not yet received my test result")
                                    .bold()
                                    .foregroundColor(.primary)
                                    .frame(width: 350, height: 50)
                                
                                Image(systemName: self.isNoResults ? "checkmark.circle.fill" :  "circle")
                                    .foregroundColor(Color.init(#colorLiteral(red: 0.3067349494, green: 0.3018456101, blue: 0.7518180013, alpha: 1)))
                                    .font(.system(size: 25))
                            }
                            
                            
                            
                        }.padding()
                    })
                    .buttonStyle(SimpleButtonStyle())
                    Button(action: {
                        
                        
                        
                        //Toggle of other checked items upon click
                               
                        
                        if self.isPositive == true {
                            
                            self.isPositive.toggle()
                        }
                        
                        else {
                            
                        }
                        
                        if self.isNegative == true {
                            
                            self.isNegative.toggle()
                        }
                        
                        else {
                            
                        }
                        
                        if self.isNoResults == true {
                            
                            self.isNoResults.toggle()
                        }
                        
                        else {
                            
                        }
                        
                        
                        // Action to Display Check Mark when  button is pressed
                        
                        
                        if self.isNegative || self.isPositive || self.isNoResults == true {
                            
                            
                        }
                        else {
                            self.isNOTest.toggle()
                        }
                        
                        
                        
                        // Tap Action for responding Next button
                        
                        if
                            self.isNOTest == true
                        {
                            self.didTap = true}
                        else {
                            self.didTap = false
                        }
                        
                        
                        // Action to add point to screener score
                        
                        if self.isNOTest == true {
                            
                            self.screenerStatus.isNoTestSelected = true
                            self.screenerStatus.IsPositiveSelected = false
                            self.screenerStatus.IsNegativeSelected = false
                            self.screenerStatus.isNonResultsSelected = false 
                        }
                        
                        else {
                            
                            self.screenerStatus.isNoTestSelected = false
                        }
                        
                        
                        
                        
                        
                    }, label: {
                        ZStack {
           
                            HStack(spacing: 10) {
                                Text("I have not been tested in the last 10 days")
                                    .bold()
                                    .foregroundColor(.primary)
                                    .frame(width: 350, height: 50)
                                
                                Image(systemName: self.isNOTest ? "checkmark.circle.fill" :  "circle")
                                    .foregroundColor(Color.init(#colorLiteral(red: 0.3067349494, green: 0.3018456101, blue: 0.7518180013, alpha: 1)))
                                    .font(.system(size: 25))
                            }
                            
                            
                            
                        }.padding()
                    })                 .buttonStyle(SimpleButtonStyle())
                    // These are the two views that will be the destination depending on which box is checked
                    NavigationLink(
                        destination: SymptomCheckerScreenerView(screenerStatus: screenerStatus), isActive: $showNextPage,
                        
                        label: { Text("") }
                        
                    )
                    Button(action: {
                        
                        if
                            
                            self.isPositive || self.isNegative || self.isNoResults || self.isNOTest == true{
                            self.showNextPage = true }
                        else {
                            self.showNextPage = false
                            
                        }
                        
                        
                    }, label: {
                        
                        
                        
                        ZStack {
                            Spacer()
                                .frame(width: 375, height: 50, alignment: .center)
                                .background(didTap ? Color.init(#colorLiteral(red: 0.3067351282, green: 0.3018459976, blue: 0.7559282184, alpha: 1)) : Color.gray)
                                .cornerRadius(10)
                            HStack {
                                Text("Next")
                                    .bold()
                                    .foregroundColor(.white)
                                
                            }
                            
                            
                        }
                    })
                }
            }.padding()
            .background(Color(.init(white: 0.95, alpha: 1)))
        }
    
}

struct RecentTestingScreenerView_Previews: PreviewProvider {
    
  
    static var previews: some View {
        RecentTestingScreenerView(screenerStatus: ScreenerStatus.init())
}
}
