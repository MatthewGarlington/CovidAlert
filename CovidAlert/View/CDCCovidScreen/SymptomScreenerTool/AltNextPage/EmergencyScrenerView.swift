//
//  EmergencyScrenerView.swift
//  CovidAlert
//
//  Created by Matthew Garlington on 12/28/20.
//

import SwiftUI

struct EmergencyScrenerView: View {
    
    
    
    
    @State var isAtLeastOneChecked : Bool = false
    @State var isNoneChecked : Bool = false
    @State private var didTap: Bool = false
    @State private var showNextPage: Bool = false
    @State private var showEmergencyPage: Bool = false
    @ObservedObject var screenerStatus: ScreenerStatus
    
    
    var body: some View {
        
       
            VStack(alignment: .leading, spacing: 20) {
                HStack{
                    Image(systemName: "staroflife.circle.fill")
                        .foregroundColor(.red)
                        .font(.system(size: 35))
                    Text("Is this an emergency?")
                        .bold()
                        .font(.system(size: 25))
                }
                
                Text("Stop and call 911 if you are experiencing:")
                    .font(.system(size: 20))
                Text("""
- Severe, constant chest pain and pressure
- Extreme difficulty breathing
- Severe, constant lightheadedness
- Serious disorientation or unresponsiveness
- Blue-tinted face or lips


""")
                
                VStack {
                    
                    Button(action: {
                        
                  
                   
                        //Toggle of other checked items upon click
                               
                        
                        if self.isNoneChecked == true {
                            
                            self.isNoneChecked.toggle()
                        }
                        
                        else {
                            
                        }
                        
                      
                        
                        
                        
                        
                        
                        
                        // Action to Display Check Mark when  button is pressed
                        
                        if self.isNoneChecked  == true {
                            
                            
                        }
                        else {
                            self.isAtLeastOneChecked.toggle()
                        }
                        
                       
                      //Next Button Control
                        if
                            self.isAtLeastOneChecked == true
                        {
                            self.didTap = true}
                        else {
                            self.didTap = false
                        }
                        
                        
                        
                        
                    }, label: {
                        ZStack {
                            Spacer()
                                .frame(width: 375, height: 75, alignment: .center)
                                .background(Color(.init(white: 1, alpha: 1)))
                                .cornerRadius(15)
                            HStack {
                                Text("I'm experiencing at least one of these")
                                    .bold()
                                    .foregroundColor(.primary)
                                
                                Image(systemName: self.isAtLeastOneChecked ? "checkmark.circle.fill" :  "circle")
                                    .foregroundColor(.blue)
                                    .font(.system(size: 25))
                            }
                            
                            
                            
                        }.padding()
                    })
                    
                    
                    

                    Button(action: {
                        
                             //Toggle of other checked items upon click
                                    
                             
                             if self.isAtLeastOneChecked == true {
                                 
                                 self.isAtLeastOneChecked.toggle()
                             }
                             
                             else {
                                 
                             }
                             
                           
                             
                             
                             
                             
                             
                             
                             // Action to Display Check Mark when  button is pressed
                             
                             if self.isAtLeastOneChecked  == true {
                                 
                                 
                             }
                             else {
                                 self.isNoneChecked.toggle()
                             }
                             
                        
                        // Next Button Control...
             
                        
                        if
                            self.isNoneChecked == true
                        {
                            self.didTap = true}
                        else {
                            self.didTap = false
                        }
                    }, label: {
                        ZStack {
                            Spacer()
                                .frame(width: 375, height: 75, alignment: .center)
                                .background(Color(.init(white: 1, alpha: 1)))
                                .cornerRadius(15)
                            HStack(spacing: 100) {
                                Text("I do not have any of these")
                                    .bold()
                                    .foregroundColor(.primary)
                                
                                
                                Image(systemName: self.isNoneChecked ? "checkmark.circle.fill" :  "circle")
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
                        destination: AgeScreenerView(screenerStatus: screenerStatus), isActive: $showNextPage,
                        
                        label: { Text("") }
                        
                    )
                    
                    NavigationLink(
                        destination: Text("Call 991"), isActive: $showEmergencyPage,
                        
                        label: { Text("") }
                        
                    )
                    
           //This is the nevigation button view at the button
                    Button(action: {
                        
                        if
                            
                            self.isNoneChecked == true{
                            self.showNextPage = true }
                        else {
                            self.showNextPage = false
                            
                        }
                        
                        if
                            
                            
                            self.isAtLeastOneChecked == true{
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


struct EmergencyScrenerView_Previews: PreviewProvider {
    static var previews: some View {
       
      
        EmergencyScrenerView(screenerStatus: ScreenerStatus.init())
        
        
    }
}
