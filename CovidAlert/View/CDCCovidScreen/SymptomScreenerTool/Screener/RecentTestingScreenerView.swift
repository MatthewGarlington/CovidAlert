//
//  RecentTestingScreenerView.swift
//  CovidAlert
//
//  Created by Matthew Garlington on 12/28/20.
//

import SwiftUI

struct RecentTestingScreenerView: View {
    @State private var showNextPage: Bool = false
    @State var isPositive : Bool = false
    @State var isNegative : Bool = false
    @State var isNoResults : Bool = false
    @State var isNOTest : Bool = false
    @State private var didTap: Bool = false
    
    var body: some View {
       
            VStack(spacing: 30) {
                Text("In the last 10 days, have you been tested for COVID-19?")
                    .font(.title)
                    .bold()
                Text("Only include your most recent saliva, oral swabs, or nasal swab test.")
                VStack {
                    
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
                        
                        
                        
                        
                    }, label: {
                        ZStack {
                            Spacer()
                                .frame(width: 375, height: 75, alignment: .center)
                                .background(Color(.init(white: 1, alpha: 1)))
                                .cornerRadius(15)
                            HStack(spacing: 75) {
                                Text("I was tested and my result was positive for COVID-19")
                                    .bold()
                                    .foregroundColor(.primary)
                                    .frame(width: 250)
                                
                                
                                
                                Image(systemName: self.isPositive ? "checkmark.circle.fill" :  "circle")
                                    .foregroundColor(.blue)
                                    .font(.system(size: 25))
                                
                            }
                            
                            
                            
                        }.padding()
                    })
                    
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
                        
                        
                        
                        
                    }, label: {
                        ZStack {
                            Spacer()
                                .frame(width: 375, height: 75, alignment: .center)
                                .background(Color(.init(white: 1, alpha: 1)))
                                .cornerRadius(15)
                            HStack(spacing: 75) {
                                Text("I was tested and my result was negative for COVID-19")
                                    .bold()
                                    .foregroundColor(.primary)
                                    .frame(width: 250)
                                
                                Image(systemName: self.isNegative ? "checkmark.circle.fill" :  "circle")
                                    .foregroundColor(.blue)
                                    .font(.system(size: 25))
                            }
                            
                            
                            
                        }.padding()
                    })
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
                        
                        
                        
                        
                    }, label: {
                        ZStack {
                            Spacer()
                                .frame(width: 375, height: 75, alignment: .center)
                                .background(Color(.init(white: 1, alpha: 1)))
                                .cornerRadius(15)
                            HStack(spacing: 75) {
                                Text("I was tested but have not yet received my test result")
                                    .bold()
                                    .foregroundColor(.primary)
                                    .frame(width: 250)
                                
                                Image(systemName: self.isNoResults ? "checkmark.circle.fill" :  "circle")
                                    .foregroundColor(.blue)
                                    .font(.system(size: 25))
                            }
                            
                            
                            
                        }.padding()
                    })
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
                        
                        
                        
                        
                    }, label: {
                        ZStack {
                            Spacer()
                                .frame(width: 375, height: 75, alignment: .center)
                                .background(Color(.init(white: 1, alpha: 1)))
                                .cornerRadius(15)
                            HStack(spacing: 75) {
                                Text("I have not been tested in the last 10 days")
                                    .bold()
                                    .foregroundColor(.primary)
                                    .frame(width: 250)
                                
                                Image(systemName: self.isNOTest ? "checkmark.circle.fill" :  "circle")
                                    .foregroundColor(.blue)
                                    .font(.system(size: 25))
                            }
                            
                            
                            
                        }.padding()
                    })
                    // These are the two views that will be the destination depending on which box is checked
                    NavigationLink(
                        destination: SymptomCheckerScreenerView(), isActive: $showNextPage,
                        
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
                                .background(didTap ? Color.blue : Color.gray)
                                .cornerRadius(10)
                            HStack {
                                Text("Next")
                                    .foregroundColor(.white)
                            }
                            
                            
                        }
                    })
                }
            }.padding()
            .background(Color(.init(white: 0.85, alpha: 1)))
        }
    
}

struct RecentTestingScreenerView_Previews: PreviewProvider {
    static var previews: some View {
        RecentTestingScreenerView()
    }
}
