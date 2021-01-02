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
    
    var body: some View {
        
        VStack {
            Text("How severe are your symptoms?")
                .font(.title)
                .bold()
                .frame(width: 250)
            VStack {
                
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
                    
                    
                    
                    
                }, label: {
                    ZStack {
                        Spacer()
                            .frame(width: 375, height: 125, alignment: .center)
                            .background(Color(.init(white: 1, alpha: 1)))
                            .cornerRadius(20)
                        HStack(spacing: 75) {
                            VStack(alignment: .leading, spacing: 20) {
                            Text("Symptoms have little to no impact")
                                .bold()
                                .foregroundColor(.primary)
                                
                            Text("I am able to do normal activities like exercising")
                                .foregroundColor(.secondary)
                                
                            }.frame(width: 250)
                            
                            
                            
                            Image(systemName: self.isLittleImpact ? "checkmark.circle.fill" :  "circle")
                                .foregroundColor(.blue)
                                .font(.system(size: 25))
                        }
                        
                        
                        
                    }.padding()
                })
                
                
                
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
                }, label: {
                    ZStack {
                        Spacer()
                            .frame(width: 375, height: 125, alignment: .center)
                            .background(Color(.init(white: 1, alpha: 1)))
                            .cornerRadius(15)
                        HStack(spacing: 75) {
                            VStack(alignment : .leading) {
                            Text("Symptoms are having some impact")
                                .bold()
                                .foregroundColor(.primary)
                            Text("I can only do some daily activities like cleaning the house or making food")
                                .foregroundColor(.secondary)
                            }.frame(width: 250)
                            
                            
                            Image(systemName: self.isSomeImpact ? "checkmark.circle.fill" :  "circle")
                                .foregroundColor(.blue)
                                .font(.system(size: 25))
                        }
                        
                        
                    }.padding()
                })
                
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
                    
                    
                    
                    
                }, label: {
                    ZStack {
                        Spacer()
                            .frame(width: 375, height: 125, alignment: .center)
                            .background(Color(.init(white: 1, alpha: 1)))
                            .cornerRadius(15)
                        HStack(spacing: 75) {
                            VStack(alignment : .leading) {
                            Text("Symptoms are having a Major Impact")
                                .bold()
                                .foregroundColor(.primary)
                            Text("I can only do what's necessary such as using the bathroom or eating")
                                .foregroundColor(.secondary)
                            }.frame(width: 250)
                            
                            Image(systemName: self.isMajorImpact ? "checkmark.circle.fill" :  "circle")
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
                    destination: ComorbidityView(), isActive: $showNextPage,
                    
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
                            .background(didTap ? Color.blue : Color.gray)
                            .cornerRadius(10)
                        HStack {
                            Text("Next")
                                .foregroundColor(.white)
                        }
                        
                        
                    }
                })
            }.padding()
        }.background(Color(.init(white: 0.85, alpha: 1)))
    }
    
}

struct SymptomSeverity_Previews: PreviewProvider {
    static var previews: some View {
        SymptomSeverity()
    }
}
