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
    @State private var showNextPage: Bool = false
    @State private var showEmergencyPage: Bool = false
    
    
    var body: some View {
       
        VStack {
       
            VStack(alignment: .leading, spacing: 10) {
          
                  
                    Text("In the last 14 days, did you work or volunteer in a healthcare facility")
                        .bold()
                        .font(.title)
               
                
                Text("This includes a clinic, hospital, emergency room, other medical setting, or long-term care facility.")
                    .font(.system(size: 20))
               
                    
                
            }    .padding(.bottom)
            .padding()
          
            
                VStack {
             
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
                        
                        
                        
                        
                    }, label: {
                        ZStack {
                            Spacer()
                                .frame(width: 375, height: 100, alignment: .center)
                                .background(Color(.init(white: 1, alpha: 1)))
                                .cornerRadius(15)
                            HStack(spacing: 75)  {
                                Text("I worked or volunteered in a healthcare facility in the last 14 days")
                                    .bold()
                                    .foregroundColor(.primary)
                                    .frame(width: 250)
                                
                                Image(systemName: self.isDidWorkOrVolunteer ? "checkmark.circle.fill" :  "circle")
                                    .foregroundColor(.blue)
                                    .font(.system(size: 25))
                            }
                            
                            
                            
                        }.padding()
                    })
                    
                    
                    

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
                    }, label: {
                        ZStack {
                            Spacer()
                                .frame(width: 375, height: 100, alignment: .center)
                                .background(Color(.init(white: 1, alpha: 1)))
                                .cornerRadius(15)
                            HStack(spacing: 75) {
                                Text("I did not work or volunteer in a healthcare facility in the last 14 days")
                                    .bold()
                                    .foregroundColor(.primary)
                                    .frame(width: 250)
                                
                                
                                Image(systemName: self.isDidNotWorkOrVolunteer ? "checkmark.circle.fill" :  "circle")
                                    .foregroundColor(.blue)
                                    .font(.system(size: 25))
                            }
                            
                            
                        }.padding()
                    })
                    Spacer()
                    
                }
                
                
                VStack{
             // These are the two views that will be the destination depending on which box is checked
                    NavigationLink(
                        destination: AgeScreenerView(), isActive: $showNextPage,
                        
                        label: { Text("") }
                        
                    )
                    
                    NavigationLink(
                        destination: PPEScreenerView(), isActive: $showEmergencyPage,
                        
                        label: { Text("") }
                        
                    )
                    
           //This is the nevigation button view at the button
                    Button(action: {
                        
                        if
                            
                           self.isDidNotWorkOrVolunteer == true {
                          
                            self.showNextPage = true }
                        else {
                            self.showNextPage = false
                            
                        }
                      
                        if
                            
                           self.isDidWorkOrVolunteer == true {
                          
                            self.showEmergencyPage = true }
                        else {
                            self.showEmergencyPage = false
                            
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
                }.padding()
                
                
                
            }.padding(.bottom)
            
            .background(Color(.init(white: 0.85, alpha: 1)))
        }
        
    
}

struct VolunteerHospitalScreenerView_Previews: PreviewProvider {
    static var previews: some View {
        VolunteerHospitalScreenerView()
    }
}
