//
//  InTheLast14DaysScreenerView.swift
//  CovidAlert
//
//  Created by Matthew Garlington on 12/29/20.
//

import SwiftUI

struct InTheLast14DaysScreenerView: View {
    @State var isLivedWithCovidPositivePerson : Bool = false
    @State var isCaredForCovidPositivePerson : Bool = false
    @State var isWithinSixFeetCovid : Bool = false
    @State var isMightHaveBeenExposedToCovid : Bool = false
    @State var isNoKnownExposure : Bool = false
    @ObservedObject var screenerStatus: ScreenerStatus
  
    @State private var didTap: Bool = false
    @State private var showNextPage: Bool = false
    
    var body: some View {
       
        ScrollView {
        VStack(alignment: .leading, spacing: 30) {
                Text("In the last 14 days, did any of these apply to you?")
                    .font(.title)
                    .bold()
                    .padding(.top)
                Text("Check All That Apply")
                VStack {
                    
                    Button(action: {
                        
                 //Action to help select all
                        

                        if self.isLivedWithCovidPositivePerson == false {
                            
                            self.isLivedWithCovidPositivePerson.toggle()
                        }
                        
                        else {
                            self.isLivedWithCovidPositivePerson.toggle()
                            self.didTap = false
                        }
                       

                        if
                            self.isLivedWithCovidPositivePerson == true
                        {
                            self.didTap = true}
                        else {
                            self.didTap = true
                        }
                        
                        // Action Tells the Screener Status what is selected
                        
                        if
                            self.isLivedWithCovidPositivePerson == true {
                            
                            self.screenerStatus.isLivedWithCovidPositivePersonSelected = true
                                
                            }
                        
                        else {
                            
                            self.screenerStatus.isLivedWithCovidPositivePersonSelected = false
                        }
                        
                      
                       
                        
                        
                        
                        
                    }, label: {
                        ZStack {
                            Spacer()
                                .frame(width: 375, height: 100, alignment: .center)
                                .background(Color(.init(white: 1, alpha: 1)))
                                .cornerRadius(15)
                            HStack(spacing: 75) {
                                Text("I lived with someone who has COVID-19")
                                    .bold()
                                    .foregroundColor(.primary)
                                    .frame(width: 250, alignment: .leading)
                                
                      
                                
                                Image(systemName: self.isLivedWithCovidPositivePerson ? "checkmark.circle.fill" :  "circle")
                                    .foregroundColor(.blue)
                                    .font(.system(size: 25))
                                
                            }
                            
                            
                            
                        }.padding()
                    })
                    
                    Button(action: {
                        
                        
                 //Toggle of other checked items upon click
                        
                        if self.isWithinSixFeetCovid == false {
                            
                            self.isWithinSixFeetCovid.toggle()
                        }
                        
                        else {
                            self.isWithinSixFeetCovid.toggle()
                        }
                       
                        // Action to Display Check Mark when  button is
                        if
                            self.isWithinSixFeetCovid == true
                        {
                            self.didTap = true}
                        else {
                            self.didTap = true
                        }
                        
                        // Action Tells the Screener Status what is selected
                        
                        if
                            self.isWithinSixFeetCovid == true {
                            
                            self.screenerStatus.isWithinSixFeetCovidSelected = true
                                
                            }
                        
                        else {
                            
                            self.screenerStatus.isWithinSixFeetCovidSelected = false
                        }
                        
                        
                        
                    }, label: {
                        ZStack {
                            Spacer()
                                .frame(width: 375, height: 100, alignment: .center)
                                .background(Color(.init(white: 1, alpha: 1)))
                                .cornerRadius(15)
                            HStack(spacing: 75) {
                                Text("For at least 15 minutes, I waas within 6 feet of someone who has COVID-19")
                                    .bold()
                                    .foregroundColor(.primary)
                                    .frame(width: 250, alignment: .leading)
                                
                                Image(systemName: self.isWithinSixFeetCovid ? "checkmark.circle.fill" :  "circle")
                                    .foregroundColor(.blue)
                                    .font(.system(size: 25))
                            }
                            
                            
                            
                        }
                    })
                }
            VStack {
                    Button(action: {
                        
                        
                        //Toggle of other checked items upon click
                               
                        if self.isCaredForCovidPositivePerson == false {
                            
                            self.isCaredForCovidPositivePerson.toggle()
                        }
                        
                        else {
                            self.isCaredForCovidPositivePerson.toggle()
                        }
                       
                        
                        
                        // Action to Display Check Mark when  button is pressed
     
                        // Tap Action for responding Next button
                        
                        if
                            self.isCaredForCovidPositivePerson == true
                        {
                            self.didTap = true}
                        else {
                            self.didTap = true
                        }
                        
                        // Action Tells the Screener Status what is selected
                        
                        if
                            self.isCaredForCovidPositivePerson == true {
                            
                            self.screenerStatus.isCaredForCovidPositivePersonSelected = true
                                
                            }
                        
                        else {
                            
                            self.screenerStatus.isCaredForCovidPositivePersonSelected = false
                        }
                        
                        
                        
                        
                    }, label: {
                        ZStack {
                            Spacer()
                                .frame(width: 375, height: 100, alignment: .center)
                                .background(Color(.init(white: 1, alpha: 1)))
                                .cornerRadius(15)
                            HStack(spacing: 75) {
                                Text("I cared for someone who has COVID-19")
                                    .bold()
                                    .foregroundColor(.primary)
                                    .frame(width: 250, alignment: .leading)
                                
                                Image(systemName: self.isCaredForCovidPositivePerson ? "checkmark.circle.fill" :  "circle")
                                    .foregroundColor(.blue)
                                    .font(.system(size: 25))
                            }
                            
                            
                            
                        }
                    })
                    Button(action: {
                        
                        
                        
                        //Toggle of other checked items upon click
                          
                        
                        if self.isMightHaveBeenExposedToCovid == false {
                            
                            self.isMightHaveBeenExposedToCovid.toggle()
                        }
                        
                        else {
                            self.isMightHaveBeenExposedToCovid.toggle()
                        }
                       
                        
                
                        
                        
                        // Action to Display Check Mark when  button is pressed
                        

                        // Tap Action for responding Next button
                        
                        if
                            self.isMightHaveBeenExposedToCovid == true
                        {
                            self.didTap = true}
                        else {
                            self.didTap = true
                        }
                        
                        // Action Tells the Screener Status what is selected
                        
                        if
                            self.isMightHaveBeenExposedToCovid == true {
                            
                            self.screenerStatus.isMightHaveBeenExposedToCovidSelected = true
                                
                            }
                        
                        else {
                            
                            self.screenerStatus.isMightHaveBeenExposedToCovidSelected = false
                        }
                        
                        
                        
                    }, label: {
                        ZStack {
                            Spacer()
                                .frame(width: 375, height: 100, alignment: .center)
                                .background(Color(.init(white: 1, alpha: 1)))
                                .cornerRadius(15)
                            HStack(spacing: 75) {
                                Text("I might have been exposed to COVID-19")
                                    .bold()
                                    .foregroundColor(.primary)
                                    .frame(width: 250, alignment: .leading)
                                
                                Image(systemName: self.isMightHaveBeenExposedToCovid ? "checkmark.circle.fill" :  "circle")
                                    .foregroundColor(.blue)
                                    .font(.system(size: 25))
                            }
                            
                            
                            
                        }.padding()
                    })
                    Button(action: {
                        
                        
                        
                        //Toggle of other checked items upon click
                               
                        if self.isNoKnownExposure == false {
                            
                            self.isNoKnownExposure.toggle()
                        }
                        
                        else {
                            self.isNoKnownExposure.toggle()
                        }
                       
                
                        
                        
                        // Action to Display Check Mark when  button is pressed
                        
  
                        
                        // Tap Action for responding Next button
                        
                        if
                            self.isNoKnownExposure == true
                        {
                            self.didTap = true}
                        else {
                            self.didTap = true
                        }
                        
                        // Action Tells the Screener Status what is selected
                        
                        if
                            self.isNoKnownExposure == true {
                            
                            self.screenerStatus.isNoKnownExposureSelected = true
                                
                            }
                        
                        else {
                            
                            self.screenerStatus.isNoKnownExposureSelected = false
                        }
                        
                        
                        
                        
                    }, label: {
                        ZStack {
                            Spacer()
                                .frame(width: 375, height: 100, alignment: .center)
                                .background(Color(.init(white: 1, alpha: 1)))
                                .cornerRadius(15)
                            HStack(spacing: 75) {
                                Text("I've no known exposure to COVID-19")
                                    .bold()
                                    .foregroundColor(.primary)
                                    .frame(width: 250, alignment: .leading)
                                
                                Image(systemName: self.isNoKnownExposure ? "checkmark.circle.fill" :  "circle")
                                    .foregroundColor(.blue)
                                    .font(.system(size: 25))
                            }
                            
                            
                            
                        }.padding()
                    })
                    
                    // These are the two views that will be the destination depending on which box is checked
                    NavigationLink(
                        destination: LiveInLongTermCareView(screenerStatus: screenerStatus), isActive: $showNextPage,
                        
                        label: { Text("") }
                        
                    )
                    Button(action: {
                        
                        if
                            
                            self.isNoKnownExposure || self.isWithinSixFeetCovid || self.isCaredForCovidPositivePerson || self.isLivedWithCovidPositivePerson || self.isMightHaveBeenExposedToCovid == true {
                            self.showNextPage = true }
                        else {
                            self.showNextPage = false
                            
                        }
               
                     

                    }, label: {
                        
                        
                        
                        ZStack {
                            Spacer()
                                .frame(width: 375, height: 50, alignment: .center)
                                .background(didTap ? Color.blue : Color.gray)
                                .cornerRadius(10)
                            HStack {
                                Text("Next")
                                    .foregroundColor(.white)
                            }
                            
                            
                        }
                    })
                }
            }
        }.padding(.bottom)
        .padding(.top)
                                            
            
            .background(Color(.init(white: 0.85, alpha: 1)))

        
    }
    
}



struct InTheLast14DaysScreenerView_Previews: PreviewProvider {
    static var previews: some View {
        InTheLast14DaysScreenerView(screenerStatus: ScreenerStatus.init())
    }
}
