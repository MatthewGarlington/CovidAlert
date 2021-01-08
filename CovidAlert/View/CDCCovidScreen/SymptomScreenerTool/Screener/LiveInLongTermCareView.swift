//
//  LiveInLongTermCareView.swift
//  CovidAlert
//
//  Created by Matthew Garlington on 12/29/20.
//

import SwiftUI

struct LiveInLongTermCareView: View {
    
    @State var isLiveInLongtermCare : Bool = false
    @State var isDontLiveInLongTermCare : Bool = false
    @State private var didTap: Bool = false
    @State private var showNextPage: Bool = false
    @State private var showEmergencyPage: Bool = false
    @ObservedObject var screenerStatus: ScreenerStatus
    
    
    var body: some View {
       
        VStack {
       
            VStack(alignment: .leading, spacing: 10) {
          
                  
                    Text("Do you live in a long-term care facility?")
                        .bold()
                        .font(.title)
               
                
                Text("This includes nursing homes or assisted living facilities")
                    .font(.system(size: 20))
               
                    
                
            }    .padding(.bottom)
            .padding()
          
            
            VStack(spacing: 40) {
             
                    Button(action: {
                        
                  
                   
                        //Toggle of other checked items upon click
                               
                        
                        if self.isDontLiveInLongTermCare == true {
                            
                            self.isDontLiveInLongTermCare.toggle()
                        }
                        
                        else {
                            
                        }
                        
                      
                        
                        
                        
                        
                        
                        
                        // Action to Display Check Mark when  button is pressed
                        
                        if self.isDontLiveInLongTermCare  == true {
                            
                            
                        }
                        else {
                            self.isLiveInLongtermCare.toggle()
                        }
                        
                       
                      //Next Button Control
                        if
                            self.isLiveInLongtermCare == true
                        {
                            self.didTap = true}
                        else {
                            self.didTap = false
                        }
                        
                        // Action Tells the Screener Status what is selected
                        
                        if
                            self.isLiveInLongtermCare == true {
                            
                            self.screenerStatus.isLiveInLongtermCareSelected = true
                            self.screenerStatus.isDontLiveInLongTermCareSelected = false
                                
                            }
                        
                        else {
                            
                            self.screenerStatus.isLiveInLongtermCareSelected = false
                        }
                        
                        
                        
                        
                        
                        
                    }, label: {
                        ZStack {
                          
                            HStack(spacing: 75)  {
                                Text("I live in a long-term care facility")
                                    .bold()
                                    .foregroundColor(.primary)
                                
                                Image(systemName: self.isLiveInLongtermCare ? "checkmark.circle.fill" :  "circle")
                                    .foregroundColor(Color.init(#colorLiteral(red: 0.3067349494, green: 0.3018456101, blue: 0.7518180013, alpha: 1)))
                                    .font(.system(size: 25))
                            }
                            
                            
                            
                        }.padding()
                    }).buttonStyle(SimpleButtonStyle())
                    
                    
                    

                    Button(action: {
                        
                             //Toggle of other checked items upon click
                                    
                             
                             if self.isLiveInLongtermCare == true {
                                 
                                 self.isLiveInLongtermCare.toggle()
                             }
                             
                             else {
                                 
                             }
                             
                           
                             
                             
                             
                             
                             
                             
                             // Action to Display Check Mark when  button is pressed
                             
                             if self.isLiveInLongtermCare  == true {
                                 
                                 
                             }
                             else {
                                 self.isDontLiveInLongTermCare.toggle()
                             }
                             
                        
                        // Next Button Control...
             
                        
                        if
                            self.isDontLiveInLongTermCare == true
                        {
                            self.didTap = true}
                        else {
                            self.didTap = false
                        }
                        
                        // Action Tells the Screener Status what is selected
                        
                        if
                            self.isDontLiveInLongTermCare == true {
                            
                            self.screenerStatus.isDontLiveInLongTermCareSelected = true
                            self.screenerStatus.isLiveInLongtermCareSelected = false
                                
                            }
                        
                        else {
                            
                            self.screenerStatus.isDontLiveInLongTermCareSelected = true 
                        }
                        
                        
                    }, label: {
                        ZStack {
                       
                            HStack(spacing: 75) {
                                Text("I don't live in a long-term care facility")
                                    .bold()
                                    .foregroundColor(.primary)
                                
                                
                                Image(systemName: self.isDontLiveInLongTermCare ? "checkmark.circle.fill" :  "circle")
                                    .foregroundColor(Color.init(#colorLiteral(red: 0.3067349494, green: 0.3018456101, blue: 0.7518180013, alpha: 1)))
                                    .font(.system(size: 25))
                            }
                            
                            
                        }.padding()
                    }).buttonStyle(SimpleButtonStyle())
                    Spacer()
                    
                }
                
                
                VStack{
             // These are the two views that will be the destination depending on which box is checked
                    NavigationLink(
                        destination: VolunteerHospitalScreenerView(screenerStatus: screenerStatus), isActive: $showNextPage,
                        
                        label: { Text("") }
                        
                    )
                    
                
                    
           //This is the nevigation button view at the button
                    Button(action: {
                        
                        if
                            
                            self.isLiveInLongtermCare || self.isDontLiveInLongTermCare == true{
                            self.showNextPage = true }
                        else {
                            self.showNextPage = false
                            
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
struct LiveInLongTermCareView_Previews: PreviewProvider {
    static var previews: some View {
        LiveInLongTermCareView(screenerStatus: ScreenerStatus.init())
    }
}
