//
//  SymptomCheckerScreenerView.swift
//  CovidAlert
//
//  Created by Matthew Garlington on 12/28/20.
//

import SwiftUI

struct SymptomCheckerScreenerView: View {
    @State private var showNextPage: Bool = false
    @State var isFeverOrChills : Bool = false
    @State var isDifficultyBreathing : Bool = false
    @State var isNewCough : Bool = false
    @State var isLossOfSmell : Bool = false
    @State var isSoreThroat : Bool = false
    @State var isVomitting : Bool = false
    @State var isFatigue : Bool = false
    @State var isNoneOfThese : Bool = false
    @State private var didTap: Bool = false
    
    var body: some View {
       
        ScrollView {
        VStack(alignment: .leading, spacing: 30) {
                Text("Have you recently started experiencing any of these symptoms")
                    .font(.title)
                    .bold()
                Text("Check All That Apply")
                VStack {
                    
                    Button(action: {
                        
                 //Action to help select all
                        

                        if self.isFeverOrChills == false {
                            
                            self.isFeverOrChills.toggle()
                        }
                        
                        else {
                            self.isFeverOrChills.toggle()
                            self.didTap = false
                        }
                       
                        
                        
                        // Action to Display Check Mark when  button is pressed

//                        if self.isDifficultyBreathing || self.isVomitting || self.isFatigue || self.isNewCough || self.isLossOfSmell || self.isNoneOfThese || self.isSoreThroat == true {
//
//
//                        }
//                        else {
//
//                            self.isFeverOrChills.toggle()
//                        }

                        
                        
                        // Tap Action for responding Next button
                        if
                            self.isFeverOrChills == true
                        {
                            self.didTap = true}
                        else {
                            self.didTap = true
                        }
                        
                      
                       
                        
                        
                        
                        
                    }, label: {
                        ZStack {
                            Spacer()
                                .frame(width: 375, height: 75, alignment: .center)
                                .background(Color(.init(white: 1, alpha: 1)))
                                .cornerRadius(15)
                            HStack(spacing: 75) {
                                Text("Fever or Chills")
                                    .bold()
                                    .foregroundColor(.primary)
                                    .frame(width: 250, alignment: .leading)
                                
                      
                                
                                Image(systemName: self.isFeverOrChills ? "checkmark.circle.fill" :  "circle")
                                    .foregroundColor(.blue)
                                    .font(.system(size: 25))
                                
                            }
                            
                            
                            
                        }.padding()
                    })
                    
                    Button(action: {
                        
                        
                 //Toggle of other checked items upon click
                        
                        if self.isDifficultyBreathing == false {
                            
                            self.isDifficultyBreathing.toggle()
                        }
                        
                        else {
                            self.isDifficultyBreathing.toggle()
                        }
                       
                        // Action to Display Check Mark when  button is pressed
                        
//                        if self.isFeverOrChills || self.isVomitting || self.isFatigue || self.isNewCough || self.isLossOfSmell || self.isNoneOfThese || self.isSoreThroat == true {
//
//
//                        }
//                        else {
//                            self.isDifficultyBreathing.toggle()
//                        }
//
                        
                        // Tap Action for responding Next button
                        if
                            self.isDifficultyBreathing == true
                        {
                            self.didTap = true}
                        else {
                            self.didTap = true
                        }
                        
                        
                        
                        
                    }, label: {
                        ZStack {
                            Spacer()
                                .frame(width: 375, height: 75, alignment: .center)
                                .background(Color(.init(white: 1, alpha: 1)))
                                .cornerRadius(15)
                            HStack(spacing: 75) {
                                Text("Mild or moderate difficulty breathing")
                                    .bold()
                                    .foregroundColor(.primary)
                                    .frame(width: 250, alignment: .leading)
                                
                                Image(systemName: self.isDifficultyBreathing ? "checkmark.circle.fill" :  "circle")
                                    .foregroundColor(.blue)
                                    .font(.system(size: 25))
                            }
                            
                            
                            
                        }.padding()
                    })
                    Button(action: {
                        
                        
                        //Toggle of other checked items upon click
                               
                        if self.isNewCough == false {
                            
                            self.isNewCough.toggle()
                        }
                        
                        else {
                            self.isNewCough.toggle()
                        }
                       
                        
                        
                        // Action to Display Check Mark when  button is pressed
                        
//                        if self.isDifficultyBreathing || self.isVomitting || self.isFatigue || self.isFeverOrChills || self.isLossOfSmell || self.isNoneOfThese || self.isSoreThroat == true {
//
//
//                        }
//                        else {
//                            self.isNewCough.toggle()
//                        }
//
//
                        // Tap Action for responding Next button
                        
                        if
                            self.isNewCough == true
                        {
                            self.didTap = true}
                        else {
                            self.didTap = true
                        }
                        
                        
                        
                        
                    }, label: {
                        ZStack {
                            Spacer()
                                .frame(width: 375, height: 75, alignment: .center)
                                .background(Color(.init(white: 1, alpha: 1)))
                                .cornerRadius(15)
                            HStack(spacing: 75) {
                                Text("New or worsening cough")
                                    .bold()
                                    .foregroundColor(.primary)
                                    .frame(width: 250, alignment: .leading)
                                
                                Image(systemName: self.isNewCough ? "checkmark.circle.fill" :  "circle")
                                    .foregroundColor(.blue)
                                    .font(.system(size: 25))
                            }
                            
                            
                            
                        }.padding()
                    })
                    Button(action: {
                        
                        
                        
                        //Toggle of other checked items upon click
                          
                        
                        if self.isLossOfSmell == false {
                            
                            self.isLossOfSmell.toggle()
                        }
                        
                        else {
                            self.isLossOfSmell.toggle()
                        }
                       
                        
                
                        
                        
                        // Action to Display Check Mark when  button is pressed
                        
//                        if self.isFeverOrChills || self.isVomitting || self.isFatigue || self.isNewCough || self.isDifficultyBreathing || self.isNoneOfThese || self.isSoreThroat == true {
//
//
//                        }
//                        else {
//                            self.isLossOfSmell.toggle()
//                        }
//
//
                        
                        // Tap Action for responding Next button
                        
                        if
                            self.isLossOfSmell == true
                        {
                            self.didTap = true}
                        else {
                            self.didTap = true
                        }
                        
                        
                        
                        
                    }, label: {
                        ZStack {
                            Spacer()
                                .frame(width: 375, height: 75, alignment: .center)
                                .background(Color(.init(white: 1, alpha: 1)))
                                .cornerRadius(15)
                            HStack(spacing: 75) {
                                Text("Sudden loss of taste or smell")
                                    .bold()
                                    .foregroundColor(.primary)
                                    .frame(width: 250, alignment: .leading)
                                
                                Image(systemName: self.isLossOfSmell ? "checkmark.circle.fill" :  "circle")
                                    .foregroundColor(.blue)
                                    .font(.system(size: 25))
                            }
                            
                            
                            
                        }.padding()
                    })
                    Button(action: {
                        
                        
                        
                        //Toggle of other checked items upon click
                               
                        if self.isSoreThroat == false {
                            
                            self.isSoreThroat.toggle()
                        }
                        
                        else {
                            self.isSoreThroat.toggle()
                        }
                       
                
                        
                        
                        // Action to Display Check Mark when  button is pressed
                        
                        
//
//                        if self.isFeverOrChills || self.isVomitting || self.isLossOfSmell || self.isNewCough || self.isDifficultyBreathing || self.isNoneOfThese || self.isFatigue == true {
//
//
//                        }
//                        else {
//                            self.isSoreThroat.toggle()
//                        }
//
//
                        
                        
                        // Tap Action for responding Next button
                        
                        if
                            self.isSoreThroat == true
                        {
                            self.didTap = true}
                        else {
                            self.didTap = true
                        }
                        
                        
                        
                        
                    }, label: {
                        ZStack {
                            Spacer()
                                .frame(width: 375, height: 75, alignment: .center)
                                .background(Color(.init(white: 1, alpha: 1)))
                                .cornerRadius(15)
                            HStack(spacing: 75) {
                                Text("Sore throat")
                                    .bold()
                                    .foregroundColor(.primary)
                                    .frame(width: 250, alignment: .leading)
                                
                                Image(systemName: self.isSoreThroat ? "checkmark.circle.fill" :  "circle")
                                    .foregroundColor(.blue)
                                    .font(.system(size: 25))
                            }
                            
                            
                            
                        }.padding()
                    })
                    Button(action: {
                        
                        
                        
                        //Toggle of other checked items upon click
                               
                        
                        if self.isVomitting == false {
                            
                            self.isVomitting.toggle()
                        }
                        
                        else {
                            self.isVomitting.toggle()
                        }
                       
                        
                        
                        // Action to Display Check Mark when  button is pressed
                        
                        
                        
//                        if self.isFeverOrChills || self.isNoneOfThese || self.isFatigue || self.isNewCough || self.isDifficultyBreathing || self.isLossOfSmell || self.isSoreThroat == true {
//
//
//                        }
//                        else {
//                            self.isVomitting.toggle()
//                        }
//
//
//
//
                        // Tap Action for responding Next button
                        
                        if
                            self.isVomitting == true
                        {
                            self.didTap = true}
                        else {
                            self.didTap = true
                        }
                        
                        
                        
                        
                    }, label: {
                        ZStack {
                            Spacer()
                                .frame(width: 375, height: 75, alignment: .center)
                                .background(Color(.init(white: 1, alpha: 1)))
                                .cornerRadius(15)
                            HStack(spacing: 75) {
                                Text("Vomiting or diarrhea")
                                    .bold()
                                    .foregroundColor(.primary)
                                    .frame(width: 250, alignment: .leading)
                                
                                Image(systemName: self.isVomitting ? "checkmark.circle.fill" :  "circle")
                                    .foregroundColor(.blue)
                                    .font(.system(size: 25))
                            }
                            
                            
                            
                        }.padding()
                    })
                    Button(action: {
                        
                        
                        
                        //Toggle of other checked items upon click
                               
                        if self.isFatigue == false {
                            
                            self.isFatigue.toggle()
                        }
                        
                        else {
                            self.isFatigue.toggle()
                        }
                       
                
                        
                        
                        // Action to Display Check Mark when  button is pressed
                        
                        
                        
                        
//                        if self.isFeverOrChills || self.isNoneOfThese || self.isVomitting || self.isNewCough || self.isDifficultyBreathing || self.isLossOfSmell || self.isSoreThroat == true {
//
//
//                        }
//                        else {
//                            self.isFatigue.toggle()
//                        }
//
//
                        
                        // Tap Action for responding Next button
                        
                        if
                            self.isFatigue == true
                        {
                            self.didTap = true}
                        else {
                            self.didTap = true
                        }
                        
                        
                        
                        
                    }, label: {
                        ZStack {
                            Spacer()
                                .frame(width: 375, height: 75, alignment: .center)
                                .background(Color(.init(white: 1, alpha: 1)))
                                .cornerRadius(15)
                            HStack(spacing: 75) {
                                Text("Unexplained, significant fatigue or aching throughout the body")
                                    .bold()
                                    .foregroundColor(.primary)
                                    .frame(width: 250, alignment: .leading)
                                
                                Image(systemName: self.isFatigue ? "checkmark.circle.fill" :  "circle")
                                    .foregroundColor(.blue)
                                    .font(.system(size: 25))
                            }
                            
                            
                            
                        }.padding()
                    })
                    Button(action: {
                        
                        
                        
                        //Toggle of other checked items upon click
                               
                        if self.isNoneOfThese == false {
                            
                            self.isNoneOfThese.toggle()
                        }
                        
                        else {
                            self.isNoneOfThese.toggle()
                        }
                       
                
                        
                        
                        // Action to Display Check Mark when  button is pressed
                        
                        
                        
//
//                        if self.isFeverOrChills || self.isVomitting || self.isFatigue || self.isNewCough || self.isDifficultyBreathing || self.isLossOfSmell || self.isSoreThroat == true {
//
//
//                        }
//                        else {
//                            self.isNoneOfThese.toggle()
//                        }
//
//
                        
                        // Tap Action for responding Next button
                        
                        if
                            self.isNoneOfThese == true
                        {
                            self.didTap = true}
                        else {
                            self.didTap = true
                        }
                        
                        
                        
                        
                    }, label: {
                        ZStack {
                            Spacer()
                                .frame(width: 375, height: 75, alignment: .center)
                                .background(Color(.init(white: 1, alpha: 1)))
                                .cornerRadius(15)
                            HStack(spacing: 75) {
                                Text("None of These")
                                    .bold()
                                    .foregroundColor(.primary)
                                    .frame(width: 250, alignment: .leading)
                                
                                Image(systemName: self.isNoneOfThese ? "checkmark.circle.fill" :  "circle")
                                    .foregroundColor(.blue)
                                    .font(.system(size: 25))
                            }
                            
                            
                            
                        }.padding()
                    })
                  
                    // These are the two views that will be the destination depending on which box is checked
                    NavigationLink(
                        destination: SymptomSeverity(), isActive: $showNextPage,
                        
                        label: { Text("") }
                        
                    )
                    Button(action: {
                        
                        if
                            
                            self.isFatigue || self.isVomitting || self.isSoreThroat || self.isNewCough || self.isFeverOrChills || self.isLossOfSmell || self.isDifficultyBreathing || self.isNoneOfThese == true {
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
    
}

struct SymptomCheckerScreenerView_Previews: PreviewProvider {
    static var previews: some View {
        SymptomCheckerScreenerView()
    }
}
