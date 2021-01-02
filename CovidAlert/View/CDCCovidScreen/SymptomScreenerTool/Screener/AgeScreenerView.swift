//
//  AgeScreenerView.swift
//  CovidAlert
//
//  Created by Matthew Garlington on 12/28/20.
//

import SwiftUI



struct AgeScreenerView: View {
    
    @State var isUnder18Checked : Bool = false
    @State var is64checked : Bool = false
    @State var isOver65Checked : Bool = false
    @State private var didTap: Bool = false
    @State private var showNextPage: Bool = false
    @State private var showTooYoungPage: Bool = false
    @ObservedObject var screenerStatus: ScreenerStatus
    
    var body: some View {
        
        VStack {
            Text("How old are you?")
                .font(.title)
                .bold()
            
            VStack {
                
                // Action to turn off other selected Checkmarks when Under 18 is selected and turn on selected check mark
                Button(action: {
                    
                    if self.is64checked == true {
                        
                        self.is64checked.toggle()
                        self.isUnder18Checked.toggle()
                        
                    }
                    else {
                        
                        self.isUnder18Checked.toggle()
                        
                    }
                    
                    if self.isOver65Checked == true {
                        
                        self.isOver65Checked.toggle()
                        self.isUnder18Checked.toggle()
                        
                    }
                    else {
                        
                        self.isUnder18Checked.toggle()
                        
                    }
                    
                    
                    // Action to Display Check Mark when Under 18 button is pressed
                    
                    if self.is64checked || self.isOver65Checked == true {
                    }
                    
                    else {
                        self.isUnder18Checked.toggle()
                    }
                    
                    
                    // Tap Action for responding Next button
                    
                    if
                        self.isUnder18Checked == true
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
                        HStack(spacing: 250) {
                            Text("Under 18")
                                .bold()
                                .foregroundColor(.primary)
                            
                            Image(systemName: self.isUnder18Checked ? "checkmark.circle.fill" :  "circle")
                                .foregroundColor(.blue)
                                .font(.system(size: 25))
                        }
                        
                        
                        
                    }.padding()
                })
                
                
                
                // View for Button 18 - 64
                Button(action: {
                    
                    
                    if self.isUnder18Checked == true {
                        
                        self.isUnder18Checked.toggle()
                        self.is64checked.toggle()
                        
                    }
                    else {
                        
                        self.is64checked.toggle()
                        
                    }
                    
                    if self.isOver65Checked == true {
                        
                        self.isOver65Checked.toggle()
                        self.is64checked.toggle()
                        
                    }
                    else {
                        
                        self.is64checked.toggle()
                        
                    }
                    
                    if self.isUnder18Checked || self.isOver65Checked == true {
                    }
                    
                    else {
                        self.is64checked.toggle()
                    }
                    
                    
                    if
                        self.is64checked == true
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
                        HStack(spacing: 175) {
                            Text("Between 18 and 64")
                                .bold()
                                .foregroundColor(.primary)
                            
                            
                            Image(systemName: self.is64checked ? "checkmark.circle.fill" :  "circle")
                                .foregroundColor(.blue)
                                .font(.system(size: 25))
                        }
                        
                        
                    }.padding()
                })
                
                Button(action: {
                    
                    if self.isUnder18Checked == true {
                        
                        self.isUnder18Checked.toggle()
                        self.isOver65Checked.toggle()
                        
                    }
                    else {
                        
                        self.isOver65Checked.toggle()
                        
                    }
                    
                    if self.is64checked == true {
                        
                        self.is64checked.toggle()
                        self.isOver65Checked.toggle()
                        
                    }
                    
                    else {
                        
                        self.isOver65Checked.toggle()
                        
                    }
                    
                    if self.is64checked || self.isUnder18Checked == true {
                    }
                    
                    else {
                        self.isOver65Checked.toggle()
                    }
                    
                    
                    if
                        self.isOver65Checked == true
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
                        HStack(spacing: 240) {
                            Text("65 or Older")
                                .bold()
                                .foregroundColor(.primary)
                            
                            Image(systemName: self.isOver65Checked ? "checkmark.circle.fill" :  "circle")
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
                    destination: RecentTestingScreenerView(screenerStatus: screenerStatus), isActive: $showNextPage,
                    
                    label: { Text("") }
                    
                )
                
                NavigationLink(
                    destination: AgeRestrictionView(), isActive: $showTooYoungPage,
                    
                    label: { Text("") }
                    
                )
                
                //This is the nevigation button view at the button
                Button(action: {
                    
                    if
                        
                        self.is64checked || self.isOver65Checked == true{
                        self.showNextPage = true }
                    else {
                        self.showNextPage = false
                        
                    }
                    
                    if
                        
                        
                        self.isUnder18Checked == true{
                        self.showTooYoungPage = true }
                    else {
                        self.showTooYoungPage = false
                        
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

struct AgeScreenerView_Previews: PreviewProvider {
    static var previews: some View {
        AgeScreenerView(screenerStatus: ScreenerStatus.init())
    }
}
