//
//  SymptomSeverity.swift
//  CovidAlert
//
//  Created by Matthew Garlington on 12/29/20.
//

import SwiftUI

struct SymptomSeverity: View {
    @State var isLittleImpact : Bool = false
    @State var isSomeImpact : Bool = false
    @State var isMajorImpact : Bool = false
    @State private var didTap: Bool = false
    @State private var showNextPage: Bool = false
    @State private var showTooYoungPage: Bool = false
    @ObservedObject var screenerStatus: ScreenerStatus
    
    var body: some View {
        
        VStack(spacing: 20) {
            Text("How severe are your symptoms?")
                .font(.title)
                .bold()
                .frame(width: 250)
            
         
            VStack(spacing: 40) {
                
                // Action to turn off other selected Checkmarks when Under 18 is selected and turn on selected check mark
                Button(action: {
                    
                    if self.isSomeImpact == true {
                        
                        self.isSomeImpact.toggle()
                        self.isLittleImpact.toggle()
                        
                    }
                    else {
                        
                        self.isLittleImpact.toggle()
                        
                    }
                    
                    if self.isMajorImpact == true {
                        
                        self.isMajorImpact.toggle()
                        self.isLittleImpact.toggle()
                        
                    }
                    else {
                        
                        self.isLittleImpact.toggle()
                        
                    }
                    
                    
                    // Action to Display Check Mark when Udner 18 button is pressed
                    
                    if self.isSomeImpact || self.isMajorImpact == true {
                    }
                    
                    else {
                        self.isLittleImpact.toggle()
                    }
                    
                    
                    // Tap Action for responding Next button
                    
                    if
                        self.isLittleImpact == true
                    {
                        self.didTap = true}
                    else {
                        self.didTap = false
                    }
                    
                    // Action Tells the Screener Status what is selected
                    
                    if
                        self.isLittleImpact == true {
                        
                        self.screenerStatus.isLittleImpactSelected = true
                        self.screenerStatus.isMajorImpactSelected = false
                        self.screenerStatus.isSomeImpactSelected = false
                            
                        }
                    
                    else {
                        
                        self.screenerStatus.isLittleImpactSelected = false
                    }
                    
                    
                    
                    
                    
                    
                }, label: {
                    ZStack {
                 
                        HStack(spacing: 75) {
                            VStack(alignment: .leading, spacing: 20) {
                            Text("Symptoms have little to no impact")
                                .bold()
                                .foregroundColor(.primary)
                                
                            Text("I am able to do normal activities like exercising")
                                .foregroundColor(.secondary)
                                
                            }.frame(width: 250)
                            
                            
                            
                            Image(systemName: self.isLittleImpact ? "checkmark.circle.fill" :  "circle")
                                .foregroundColor(Color.init(#colorLiteral(red: 0.3067349494, green: 0.3018456101, blue: 0.7518180013, alpha: 1)))
                                .font(.system(size: 25))
                        }
                        
                        
                        
                    }.padding()
                })  .buttonStyle(SimpleButtonStyle())
                
                
                
                // View for Button 18 - 64
                Button(action: {
                    
                    
                    if self.isLittleImpact == true {
                        
                        self.isLittleImpact.toggle()
                        self.isSomeImpact.toggle()
                        
                    }
                    else {
                        
                        self.isSomeImpact.toggle()
                        
                    }
                    
                    if self.isMajorImpact == true {
                        
                        self.isMajorImpact.toggle()
                        self.isSomeImpact.toggle()
                        
                    }
                    else {
                        
                        self.isSomeImpact.toggle()
                        
                    }
                    
                    if self.isLittleImpact || self.isMajorImpact == true {
                    }
                    
                    else {
                        self.isSomeImpact.toggle()
                    }
                    
                    
                    if
                        self.isSomeImpact == true
                    {
                        self.didTap = true}
                    else {
                        self.didTap = false
                        
                    
                    }
                    
                    // Action Tells the Screener Status what is selected
                    
                    if
                        self.isSomeImpact == true {
                        
                        self.screenerStatus.isSomeImpactSelected = true
                        self.screenerStatus.isLittleImpactSelected = false
                        self.screenerStatus.isMajorImpactSelected = false
                            
                        }
                    
                    else {
                        
                        self.screenerStatus.isSomeImpactSelected = true
                    }
                }, label: {
                    ZStack {
                   
                        HStack(spacing: 75) {
                            VStack(alignment : .leading) {
                            Text("Symptoms are having some impact")
                                .bold()
                                .foregroundColor(.primary)
                            Text("I can only do some daily activities like cleaning the house or making food")
                                .foregroundColor(.secondary)
                            }.frame(width: 250)
                            
                            
                            Image(systemName: self.isSomeImpact ? "checkmark.circle.fill" :  "circle")
                                .foregroundColor(Color.init(#colorLiteral(red: 0.3067349494, green: 0.3018456101, blue: 0.7518180013, alpha: 1)))
                                .font(.system(size: 25))
                        }
                        
                        
                    }.padding()
                })  .buttonStyle(SimpleButtonStyle())
                
                Button(action: {
                    
                    if self.isLittleImpact == true {
                        
                        self.isLittleImpact.toggle()
                        self.isMajorImpact.toggle()
                        
                    }
                    else {
                        
                        self.isMajorImpact.toggle()
                        
                    }
                    
                    if self.isSomeImpact == true {
                        
                        self.isSomeImpact.toggle()
                        self.isMajorImpact.toggle()
                        
                    }
                    
                    else {
                        
                        self.isMajorImpact.toggle()
                        
                    }
                    
                    if self.isLittleImpact || self.isSomeImpact == true {
                    }
                    
                    else {
                        self.isMajorImpact.toggle()
                    }
                    
                    
                    if
                        self.isMajorImpact == true
                    {
                        self.didTap = true}
                    else {
                        self.didTap = false
                    }
                    
                    // Action Tells the Screener Status what is selected
                    
                    if
                        self.isMajorImpact == true {
                        
                        self.screenerStatus.isMajorImpactSelected = true
                        self.screenerStatus.isLittleImpactSelected = false
                        self.screenerStatus.isSomeImpactSelected = false
                            
                        }
                    
                    else {
                        
                        self.screenerStatus.isMajorImpactSelected = false 
                    }
                    
                    
                    
                    
                }, label: {
                    ZStack {
                
                        HStack(spacing: 75) {
                            VStack(alignment : .leading) {
                            Text("Symptoms are having a Major Impact")
                                .bold()
                                .foregroundColor(.primary)
                            Text("I can only do what's necessary such as using the bathroom or eating")
                                .foregroundColor(.secondary)
                            }.frame(width: 250)
                            
                            Image(systemName: self.isMajorImpact ? "checkmark.circle.fill" :  "circle")
                                .foregroundColor(Color.init(#colorLiteral(red: 0.3067349494, green: 0.3018456101, blue: 0.7518180013, alpha: 1)))
                                .font(.system(size: 25))
                        }
                        
                        
                        
                    }.padding()
                })  .buttonStyle(SimpleButtonStyle())
                Spacer()
                
            }
            VStack{
                // These are the two views that will be the destination depending on which box is checked
                NavigationLink(
                    destination: ComorbidityView(screenerStatus: screenerStatus), isActive: $showNextPage,
                    
                    label: { Text("") }
                    
                )
                
              
                
                //This is the nevigation button view at the button
                Button(action: {
                    
                    if
                        
                        self.isLittleImpact || self.isSomeImpact || self.isMajorImpact == true{
                        self.showNextPage = true }
                    else {
                        self.showNextPage = false
                        
                    }
                    
                  
                }, label: {
                    
                    
                    
                    ZStack {
                        Spacer()
                            .frame(width: 375, height: 50, alignment: .center)
                            .background(didTap ? Color.init(#colorLiteral(red: 0.3115147948, green: 0.3016772568, blue: 0.7559033036, alpha: 1)) : Color.gray)
                            .cornerRadius(10)
                        HStack {
                            Text("Next")
                                .foregroundColor(.white)
                        }
                        
                        
                    }
                })
            }.padding()
        }.background(Color(.init(white: 0.95, alpha: 1)))
    }
    
}

struct SymptomSeverity_Previews: PreviewProvider {
    static var previews: some View {
        SymptomSeverity(screenerStatus: ScreenerStatus.init())
    }
}
