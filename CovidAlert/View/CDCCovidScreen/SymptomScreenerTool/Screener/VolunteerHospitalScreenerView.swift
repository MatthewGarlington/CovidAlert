//
//  VolunteerHospitalScreenerView.swift
//  CovidAlert
//
//  Created by Matthew Garlington on 12/29/20.
//

import SwiftUI

struct VolunteerHospitalScreenerView: View {
    
    @State var isDidWorkOrVolunteer : Bool = false
    @State var isDidNotWorkOrVolunteer : Bool = false
    @State private var didTap: Bool = false
    @State private var showContactHealthcare: Bool = false
    @State private var showContactWork: Bool = false
    @State private var showKeepPhysicalDistancing: Bool = false
    @ObservedObject var screenerStatus: ScreenerStatus
    
    
    var body: some View {
    
        
        VStack(spacing: 40) {
       
            VStack(alignment: .leading, spacing: 10) {
          
                  
                    Text("In the last 14 days, did you work or volunteer in a healthcare facility")
                        .bold()
                        .font(.title)
               
                
                Text("This includes a clinic, hospital, emergency room, other medical setting, or long-term care facility.")
                    .font(.system(size: 20))
               
                    
                
            }    .padding(.bottom)
            .padding()
          
            
            VStack(spacing: 40) {
             
                    Button(action: {
                        
                  
                   
                        //Toggle of other checked items upon click
                               
                        
                        if self.isDidNotWorkOrVolunteer == true {
                            
                            self.isDidNotWorkOrVolunteer.toggle()
                        }
                        
                        else {
                            
                        }
                        
                      
                        
                        
                        
                        
                        
                        
                        // Action to Display Check Mark when  button is pressed
                        
                        if self.isDidNotWorkOrVolunteer  == true {
                            
                            
                        }
                        else {
                            self.isDidWorkOrVolunteer.toggle()
                        }
                        
                       
                      //Next Button Control
                        if
                            self.isDidWorkOrVolunteer == true
                        {
                            self.didTap = true}
                        else {
                            self.didTap = false
                        }
                        
                        // Action Tells the Screener Status what is selected
                        
                        if
                            self.isDidWorkOrVolunteer == true {
                            
                            self.screenerStatus.isDidWorkOrVolunteerSelected = true
                            self.screenerStatus.isDidNotWorkOrVolunteerSelected = false
                  
                                
                            }
                        
                        else {
                            
                           
                            self.screenerStatus.isDidWorkOrVolunteerSelected = false
                        }
                        
                    
                        
                        
                        
                    }, label: {
                        ZStack {
                 
                            HStack(spacing: 75)  {
                                Text("I worked or volunteered in a healthcare facility in the last 14 days")
                                    .bold()
                                    .foregroundColor(.primary)
                                    .frame(width: 250)
                                
                                Image(systemName: self.isDidWorkOrVolunteer ? "checkmark.circle.fill" :  "circle")
                                    .foregroundColor(Color.init(#colorLiteral(red: 0.3067349494, green: 0.3018456101, blue: 0.7518180013, alpha: 1)))
                                    .font(.system(size: 25))
                            }
                            
                            
                            
                        }.padding()
                    }).buttonStyle(SimpleButtonStyle())
                    
                    
                    

                    Button(action: {
                        
                             //Toggle of other checked items upon click
                                    
                             
                             if self.isDidWorkOrVolunteer == true {
                                 
                                 self.isDidWorkOrVolunteer.toggle()
                             }
                             
                             else {
                                 
                             }
                             
                           
                             
                             
                             
                             
                             
                             
                             // Action to Display Check Mark when  button is pressed
                             
                             if self.isDidWorkOrVolunteer  == true {
                                 
                                 
                             }
                             else {
                                 self.isDidNotWorkOrVolunteer.toggle()
                             }
                             
                        
                        // Next Button Control...
             
                        
                        if
                            self.isDidNotWorkOrVolunteer == true
                        {
                            self.didTap = true}
                        else {
                            self.didTap = false
                        }
                        
                        // Action Tells the Screener Status what is selected
                        
                        if
                            self.isDidNotWorkOrVolunteer == true {
                            
                            self.screenerStatus.isDidNotWorkOrVolunteerSelected = true
                            self.screenerStatus.isDidWorkOrVolunteerSelected = false
                                
                            }
                        
                        else {
                            
                     
                            self.screenerStatus.isDidNotWorkOrVolunteerSelected = false 
                        }
                        
                     
                        
                    }, label: {
                        ZStack {
                      
                            HStack(spacing: 75) {
                                Text("I did not work or volunteer in a healthcare facility in the last 14 days")
                                    .bold()
                                    .foregroundColor(.primary)
                                    .frame(width: 250)
                                
                                
                                Image(systemName: self.isDidNotWorkOrVolunteer ? "checkmark.circle.fill" :  "circle")
                                    .foregroundColor(Color.init(#colorLiteral(red: 0.3067349494, green: 0.3018456101, blue: 0.7518180013, alpha: 1)))
                                    .font(.system(size: 25))
                            }
                            
                            
                        }.padding()
                    }).buttonStyle(SimpleButtonStyle())
                    Spacer()
                    
//                    ZStack {
//                        Spacer()
//                            .frame(width: 375, height: 200, alignment: .center)
//                            .background(Color(.init(white: 1, alpha: 1)))
//                            .cornerRadius(15)
//                       VStack {
//
//                        Text("Is Worked with Covid is \(self.screenerStatus.isDidWorkOrVolunteerSelected.description)")
//                            .bold()
//                            .foregroundColor(.primary)
//                            .frame(width: 250)
//                        Text("Is Did Not Worked with Covid is \(self.screenerStatus.isDidNotWorkOrVolunteerSelected.description)")
//                            .bold()
//                            .foregroundColor(.primary)
//                            .frame(width: 300)
//
//                        }
//
//
//                    }.padding()
                    
                }
            
                
                
                VStack{
             // These are the two views that will be the destination depending on which box is checked
                    NavigationLink(
                        destination: ContactHealthCareResultsView(screenerStatus: screenerStatus), isActive: $showContactHealthcare,
                        
                        label: { Text("") }
                        
                    )
                    
                    NavigationLink(
                        destination: ContactYourWorkResultsView(screenerStatus: screenerStatus) , isActive: $showContactWork,
                        
                        label: { Text("") }
                        
                    )
                    
                    NavigationLink(
                        destination: ContinuePhysicalDistancingResultsView(screenerStatus: screenerStatus), isActive: $showKeepPhysicalDistancing,
                        
                        label: { Text("") }
                        
                    )
                    
           //This is the nevigation button view at the button
                  
                    Button(action: {
                       
                        // If You did work at the hospital and had symptoms Then this will show the contact work page
                        
                        // show contact healthcare professional page if there are selected
                        
                        if
                            self.screenerStatus.isDidWorkOrVolunteerSelected && self.screenerStatus.IsPositiveSelected == true {
                            
                            self.showContactWork = true
                        }
                        
                        else if
                            
                             self.screenerStatus.isDidWorkOrVolunteerSelected && self.screenerStatus.isSomeImpactSelected || self.screenerStatus.isDidWorkOrVolunteerSelected && self.screenerStatus.isMajorImpactSelected == true {
                            
                            self.showContactWork = true
                        
                        }
                        
                        else if
                            
                            self.screenerStatus.isDidWorkOrVolunteerSelected && self.screenerStatus.isLiveInLongtermCareSelected || self.screenerStatus.isDidWorkOrVolunteerSelected && self.screenerStatus.isMightHaveBeenExposedToCovidSelected == true {
                            
                            self.showContactWork = true }
               
                        else if
                            
                            self.screenerStatus.isDidWorkOrVolunteerSelected && self.screenerStatus.isLivedWithCovidPositivePersonSelected || self.screenerStatus.isDidWorkOrVolunteerSelected && self.screenerStatus.isCaredForCovidPositivePersonSelected == true {
                            
                            self.showContactWork = true }
               
                            else {
                          
                                self.showContactWork = false
                        }
                        
                    
                        

                      
                    
                        
              
                  
                        
                        
                     
                     
                        
                       
                        // show contact healthcare professional page if there are selected
                        
                        
                        if
                            self.screenerStatus.isDidNotWorkOrVolunteerSelected && self.screenerStatus.IsPositiveSelected == true {
                            
                            self.showContactHealthcare = true
                        }
                        
                        else if
                            
                             self.screenerStatus.isDidNotWorkOrVolunteerSelected && self.screenerStatus.isSomeImpactSelected || self.screenerStatus.isDidNotWorkOrVolunteerSelected && self.screenerStatus.isMajorImpactSelected == true {
                            
                            self.showContactHealthcare = true
                        
                        }
                        
                        else if
                            
                            self.screenerStatus.isDidNotWorkOrVolunteerSelected && self.screenerStatus.isLiveInLongtermCareSelected || self.screenerStatus.isDidNotWorkOrVolunteerSelected && self.screenerStatus.isMightHaveBeenExposedToCovidSelected == true {
                            
                            self.showContactHealthcare = true }
               
                        else if
                            
                            self.screenerStatus.isDidNotWorkOrVolunteerSelected && self.screenerStatus.isLivedWithCovidPositivePersonSelected || self.screenerStatus.isDidNotWorkOrVolunteerSelected && self.screenerStatus.isCaredForCovidPositivePersonSelected == true {
                            
                            self.showContactHealthcare = true }
               
                            else {
                          
                                self.showContactHealthcare = false
                        }
                        
                      
                        
                        // Show No test needed/ physical distancing screen if these are selected
                        
                        
                  
                  
                        
                        
                        if
                            self.screenerStatus.isDidNotWorkOrVolunteerSelected && self.screenerStatus.IsNegativeSelected == true {
                            
                            self.showKeepPhysicalDistancing = true
                        }
                        
                        else if
                            
                             self.screenerStatus.isNonResultsSelected && self.screenerStatus.isNoneOfTheseSymptomsSelected || self.screenerStatus.isNonResultsSelected && self.screenerStatus.isNoneOfTheseSymptomsSelected == true {
                            
                            self.showKeepPhysicalDistancing = true
                        
                        }
                        
                        else if
                            
                            self.screenerStatus.isNoTestSelected && self.screenerStatus.isNoneOfTheseSymptomsSelected || self.screenerStatus.isNoTestSelected && self.screenerStatus.isLittleImpactSelected == true {
                            
                            self.showKeepPhysicalDistancing = true }
               
                     
                            else {
                          
                                self.showKeepPhysicalDistancing = false
                        }
                        

                        
                        
                      
                
                    }, label: {
                        
                        
                        
                        ZStack {
                            Spacer()
                                .frame(width: 375, height: 50, alignment: .center)
                                .background(didTap ? Color.init(#colorLiteral(red: 0.3028137088, green: 0.2979239523, blue: 0.7478307486, alpha: 1)) : Color.gray)
                                .cornerRadius(10)
                            HStack {
                                Text("Next")
                                    .foregroundColor(.white)
                            }
                            
                            
                        }
                    })
                }.padding()
                
                
                
            }.padding(.bottom)
        .padding(.top)
                                            
            
            .background(Color(.init(white: 0.95, alpha: 1)))
          
        }
        
    
}

struct VolunteerHospitalScreenerView_Previews: PreviewProvider {
    static var previews: some View {
        VolunteerHospitalScreenerView(screenerStatus: ScreenerStatus.init())
    }
}
