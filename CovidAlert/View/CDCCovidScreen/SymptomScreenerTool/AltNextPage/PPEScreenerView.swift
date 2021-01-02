//
//  PPEScreenerView.swift
//  CovidAlert
//
//  Created by Matthew Garlington on 12/29/20.
//

import SwiftUI

struct PPEScreenerView: View {
    @State var isYes : Bool = false
    @State var isNo : Bool = false
    @State private var didTap: Bool = false
    @State private var showNextPage: Bool = false
    @State private var showEmergencyPage: Bool = false
    
    
    var body: some View {
       
        VStack {
       
            VStack(alignment: .leading, spacing: 10) {
          
                  
                    Text("Did you wear the recommended personal protective equipment while at the healthcare facility?")
                        .bold()
                        .font(.title)
               
                
                
            }    .padding(.bottom)
            .padding()
          
            
                VStack {
             
                    Button(action: {
                        
                  
                   
                        //Toggle of other checked items upon click
                               
                        
                        if self.isNo == true {
                            
                            self.isNo.toggle()
                        }
                        
                        else {
                            
                        }
                        
                      
                        
                        
                        
                        
                        
                        
                        // Action to Display Check Mark when  button is pressed
                        
                        if self.isNo  == true {
                            
                            
                        }
                        else {
                            self.isYes.toggle()
                        }
                        
                       
                      //Next Button Control
                        if
                            self.isYes == true
                        {
                            self.didTap = true}
                        else {
                            self.didTap = false
                        }
                        
                        
                        
                        
                    }, label: {
                        ZStack {
                            Spacer()
                                .frame(width: 375, height: 50, alignment: .center)
                                .background(Color(.init(white: 1, alpha: 1)))
                                .cornerRadius(15)
                        
                            HStack(spacing: 75)  {
                                Text("Yes")
                                    .bold()
                                    .foregroundColor(.primary)
                                    .frame(width: 250)
                                
                                Image(systemName: self.isYes ? "checkmark.circle.fill" :  "circle")
                                    .foregroundColor(.blue)
                                    .font(.system(size: 25))
                            }
                            
                            
                            
                        }.padding()
                    })
                    
                    
                    

                    Button(action: {
                        
                             //Toggle of other checked items upon click
                                    
                             
                             if self.isYes == true {
                                 
                                 self.isYes.toggle()
                             }
                             
                             else {
                                 
                             }
                             
                           
                             
                             
                             
                             
                             
                             
                             // Action to Display Check Mark when  button is pressed
                             
                             if self.isYes  == true {
                                 
                                 
                             }
                             else {
                                 self.isNo.toggle()
                             }
                             
                        
                        // Next Button Control...
             
                        
                        if
                            self.isNo == true
                        {
                            self.didTap = true}
                        else {
                            self.didTap = false
                        }
                    }, label: {
                        ZStack {
                            Spacer()
                                .frame(width: 375, height: 50, alignment: .center)
                                .background(Color(.init(white: 1, alpha: 1)))
                                .cornerRadius(15)
                            HStack(spacing: 75) {
                    
                                Text("No")
                                    .bold()
                                    .foregroundColor(.primary)
                                    .frame(width: 250)
                                    
                              
                                
                                Image(systemName: self.isNo ? "checkmark.circle.fill" :  "circle")
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
                        destination: Text("Call 991"), isActive: $showEmergencyPage,
                        
                        label: { Text("") }
                        
                    )
                    
           //This is the nevigation button view at the button
                    Button(action: {
                        
                        if
                            
                            self.isYes || self.isNo == true{
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
                }.padding()
                
                
                
            }.padding(.bottom)
            
            .background(Color(.init(white: 0.85, alpha: 1)))
        }
        
    
}

struct PPEScreenerView_Previews: PreviewProvider {
    static var previews: some View {
        PPEScreenerView()
    }
}
