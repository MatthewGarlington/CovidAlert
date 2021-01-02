//
//  ComorbidityView.swift
//  CovidAlert
//
//  Created by Matthew Garlington on 12/29/20.
//

import SwiftUI

struct ComorbidityView: View {
 
    @State var isObesity : Bool = false
    @State var isSmokerorVaping : Bool = false
    @State var isPregnant : Bool = false
    @State var isDiabetes : Bool = false
    @State var isChronicLungProblems : Bool = false
    @State var isHeartCondition : Bool = false
    @State var isWeakendImmuneSystem : Bool = false
    @State var isStroke : Bool = false
    @State var isSickleCell : Bool = false
    @State var isNoneOfThese : Bool = false
    @State private var didTap: Bool = false
    @State private var showNextPage: Bool = false
    @ObservedObject var screenerStatus: ScreenerStatus
    
    var body: some View {
       
        ScrollView {
        VStack(alignment: .leading, spacing: 30) {
                Text("Do any of these apply to you?")
                    .font(.title)
                    .bold()
                    .padding(.top)
                Text("Check All That Apply")
                VStack {
                    
                    Button(action: {
                        
                 //Action to help select all
                        

                        if self.isObesity == false {
                            
                            self.isObesity.toggle()
                        }
                        
                        else {
                            self.isObesity.toggle()
                            self.didTap = false
                        }
                       

                        if
                            self.isObesity == true
                        {
                            self.didTap = true}
                        else {
                            self.didTap = true
                        }
                        
                        
                        // Action Tells the Screener Status what is selected
                        
                        if
                            self.isObesity == true {
                            
                            self.screenerStatus.isObesitySelected = true
                                
                            }
                        
                        else {
                            
                            self.screenerStatus.isObesitySelected = false
                        }
                        
                      
                       
                        
                        
                        
                        
                    }, label: {
                        ZStack {
                            Spacer()
                                .frame(width: 375, height: 75, alignment: .center)
                                .background(Color(.init(white: 1, alpha: 1)))
                                .cornerRadius(15)
                            HStack(spacing: 75) {
                                Text("Obesity")
                                    .bold()
                                    .foregroundColor(.primary)
                                    .frame(width: 250, alignment: .leading)
                                
                      
                                
                                Image(systemName: self.isObesity ? "checkmark.circle.fill" :  "circle")
                                    .foregroundColor(.blue)
                                    .font(.system(size: 25))
                                
                            }
                            
                            
                            
                        }.padding()
                    })
                    
                    Button(action: {
                        
                        
                 //Toggle of other checked items upon click
                        
                        if self.isSmokerorVaping == false {
                            
                            self.isSmokerorVaping.toggle()
                        }
                        
                        else {
                            self.isSmokerorVaping.toggle()
                        }
                       
                        // Action to Display Check Mark when  button is
                        if
                            self.isSmokerorVaping == true
                        {
                            self.didTap = true}
                        else {
                            self.didTap = true
                        }
                        
                        
                        // Action Tells the Screener Status what is selected
                        
                        if
                            self.isSmokerorVaping == true {
                            
                            self.screenerStatus.isSmokerorVapingSelected = true
                                
                            }
                        
                        else {
                            
                            self.screenerStatus.isSmokerorVapingSelected = false
                        }
                        
                        
                        
                        
                    }, label: {
                        ZStack {
                            Spacer()
                                .frame(width: 375, height: 75, alignment: .center)
                                .background(Color(.init(white: 1, alpha: 1)))
                                .cornerRadius(15)
                            HStack(spacing: 75) {
                                Text("Smoking or Vaping")
                                    .bold()
                                    .foregroundColor(.primary)
                                    .frame(width: 250, alignment: .leading)
                                
                                Image(systemName: self.isSmokerorVaping ? "checkmark.circle.fill" :  "circle")
                                    .foregroundColor(.blue)
                                    .font(.system(size: 25))
                            }
                            
                            
                            
                        }
                    })
                }
            VStack {
                    Button(action: {
                        
                        
                        //Toggle of other checked items upon click
                               
                        if self.isPregnant == false {
                            
                            self.isPregnant.toggle()
                        }
                        
                        else {
                            self.isPregnant.toggle()
                        }
                       
                        
                        
                        // Action to Display Check Mark when  button is pressed
     
                        // Tap Action for responding Next button
                        
                        if
                            self.isPregnant == true
                        {
                            self.didTap = true}
                        else {
                            self.didTap = true
                        }
                        
                        // Action Tells the Screener Status what is selected
                        
                        if
                            self.isPregnant == true {
                            
                            self.screenerStatus.IsPositiveSelected = true
                                
                            }
                        
                        else {
                            
                            self.screenerStatus.IsPositiveSelected = false
                        }
                        
                        
                        
                        
                        
                    }, label: {
                        ZStack {
                            Spacer()
                                .frame(width: 375, height: 75, alignment: .center)
                                .background(Color(.init(white: 1, alpha: 1)))
                                .cornerRadius(15)
                            HStack(spacing: 75) {
                                Text("Pregnancy")
                                    .bold()
                                    .foregroundColor(.primary)
                                    .frame(width: 250, alignment: .leading)
                                
                                Image(systemName: self.isPregnant ? "checkmark.circle.fill" :  "circle")
                                    .foregroundColor(.blue)
                                    .font(.system(size: 25))
                            }
                            
                            
                            
                        }
                    })
                    Button(action: {
                        
                        
                        
                        //Toggle of other checked items upon click
                          
                        
                        if self.isDiabetes == false {
                            
                            self.isDiabetes.toggle()
                        }
                        
                        else {
                            self.isDiabetes.toggle()
                        }
                       
                        
                
                        
                        
                        // Action to Display Check Mark when  button is pressed
                        

                        // Tap Action for responding Next button
                        
                        if
                            self.isDiabetes == true
                        {
                            self.didTap = true}
                        else {
                            self.didTap = true
                        }
                        
                        
                        // Action Tells the Screener Status what is selected
                        
                        if
                            self.isDiabetes == true {
                            
                            self.screenerStatus.isDiabetesSelected = true
                                
                            }
                        
                        else {
                            
                            self.screenerStatus.isDiabetesSelected = false
                        }
                        
                        
                        
                    }, label: {
                        ZStack {
                            Spacer()
                                .frame(width: 375, height: 100, alignment: .center)
                                .background(Color(.init(white: 1, alpha: 1)))
                                .cornerRadius(15)
                            HStack(spacing: 75) {
                                Text("Diabetes, high blood pressure, chronic kidney diease, or liver disease")
                                    .bold()
                                    .foregroundColor(.primary)
                                    .frame(width: 250, alignment: .leading)
                                
                                Image(systemName: self.isDiabetes ? "checkmark.circle.fill" :  "circle")
                                    .foregroundColor(.blue)
                                    .font(.system(size: 25))
                            }
                            
                            
                            
                        }.padding()
                    })
                    Button(action: {
                        
                        
                        
                        //Toggle of other checked items upon click
                               
                        if self.isChronicLungProblems == false {
                            
                            self.isChronicLungProblems.toggle()
                        }
                        
                        else {
                            self.isChronicLungProblems.toggle()
                        }
                       
                
                        
                        
                        // Action to Display Check Mark when  button is pressed
                        
  
                        
                        // Tap Action for responding Next button
                        
                        if
                            self.isChronicLungProblems == true
                        {
                            self.didTap = true}
                        else {
                            self.didTap = true
                        }
                        
                        
                        // Action Tells the Screener Status what is selected
                        
                        if
                            self.isChronicLungProblems == true {
                            
                            self.screenerStatus.isChronicLungProblemsSelected = true
                                
                            }
                        
                        else {
                            
                            self.screenerStatus.isChronicLungProblemsSelected = false
                        }
                        
                        
                        
                        
                    }, label: {
                        ZStack {
                            Spacer()
                                .frame(width: 375, height: 150, alignment: .center)
                                .background(Color(.init(white: 1, alpha: 1)))
                                .cornerRadius(15)
                            HStack(spacing: 75) {
                                Text("Chronic Lung disease, such as moderate to severe asthma, COPD (chronic obstructive pulmonary diease), cystic fibrosis, or pulmonary fibrosis")
                                    .bold()
                                    .foregroundColor(.primary)
                                    .frame(width: 250, alignment: .leading)
                                
                                Image(systemName: self.isChronicLungProblems ? "checkmark.circle.fill" :  "circle")
                                    .foregroundColor(.blue)
                                    .font(.system(size: 25))
                            }
                            
                            
                            
                        }.padding()
                    })
                    Button(action: {
                        
                        
                        
                        //Toggle of other checked items upon click
                               
                        
                        if self.isHeartCondition == false {
                            
                            self.isHeartCondition.toggle()
                        }
                        
                        else {
                            self.isHeartCondition.toggle()
                        }
                       
                        
                        
                        // Action to Display Check Mark when  button is pressed
                        

                        // Tap Action for responding Next button
                        
                        if
                            self.isHeartCondition == true
                        {
                            self.didTap = true}
                        else {
                            self.didTap = true
                        }
                        
                        
                        // Action Tells the Screener Status what is selected
                        
                        if
                            self.isHeartCondition == true {
                            
                            self.screenerStatus.isHeartConditionSelected = true
                                
                            }
                        
                        else {
                            
                            self.screenerStatus.isHeartConditionSelected = false
                        }
                        
                        
                        
                    }, label: {
                        ZStack {
                            Spacer()
                                .frame(width: 375, height: 100, alignment: .center)
                                .background(Color(.init(white: 1, alpha: 1)))
                                .cornerRadius(15)
                            HStack(spacing: 75) {
                                Text("Serious heart condition, such as heart failure, prior heart attack, or cardiomyopathy")
                                    .bold()
                                    .foregroundColor(.primary)
                                    .frame(width: 250, alignment: .leading)
                                
                                Image(systemName: self.isHeartCondition ? "checkmark.circle.fill" :  "circle")
                                    .foregroundColor(.blue)
                                    .font(.system(size: 25))
                            }
                            
                            
                            
                        }.padding()
                    })
                    Button(action: {
                        
                        
                        
                        //Toggle of other checked items upon click
                               
                        if self.isWeakendImmuneSystem == false {
                            
                            self.isWeakendImmuneSystem.toggle()
                        }
                        
                        else {
                            self.isWeakendImmuneSystem.toggle()
                        }
                       
                
                        
                        
                        // Action to Display Check Mark when  button is pressed
                        
                        
                        

                        
                        // Tap Action for responding Next button
                        
                        if
                            self.isWeakendImmuneSystem == true
                        {
                            self.didTap = true}
                        else {
                            self.didTap = true
                        }
                        
                        // Action Tells the Screener Status what is selected
                        
                        if
                            self.isWeakendImmuneSystem == true {
                            
                            self.screenerStatus.isWeakendImmuneSystemSelected = true
                                
                            }
                        
                        else {
                            
                            self.screenerStatus.isWeakendImmuneSystemSelected = false
                        }
                        
                        
                        
                        
                    }, label: {
                        ZStack {
                            Spacer()
                                .frame(width: 375, height: 125, alignment: .center)
                                .background(Color(.init(white: 1, alpha: 1)))
                                .cornerRadius(15)
                            HStack(spacing: 75) {
                                Text("Weakend immune system from HIV, cancer treatment, use of medicines causing immune supression, or other factors")
                                    .bold()
                                    .foregroundColor(.primary)
                                    .frame(width: 250, alignment: .leading)
                                
                                Image(systemName: self.isWeakendImmuneSystem ? "checkmark.circle.fill" :  "circle")
                                    .foregroundColor(.blue)
                                    .font(.system(size: 25))
                            }
                            
                            
                            
                        }.padding()
                    })
                    Button(action: {
                        
                        
                        
                        //Toggle of other checked items upon click
                               
                        if self.isStroke == false {
                            
                            self.isStroke.toggle()
                        }
                        
                        else {
                            self.isStroke.toggle()
                        }
                       
                
                        
                        
                        // Action to Display Check Mark when  button is pressed
                        
                        
 
                        
                        // Tap Action for responding Next button
                        
                        if
                            self.isStroke == true
                        {
                            self.didTap = true}
                        else {
                            self.didTap = true
                        }
                        
                        // Action Tells the Screener Status what is selected
                        
                        if
                            self.isStroke == true {
                            
                            self.screenerStatus.isStrokeSelected = true
                                
                            }
                        
                        else {
                            
                            self.screenerStatus.isStrokeSelected = false
                        }
                        
                        
                        
                        
                    }, label: {
                        ZStack {
                            Spacer()
                                .frame(width: 375, height: 100, alignment: .center)
                                .background(Color(.init(white: 1, alpha: 1)))
                                .cornerRadius(15)
                            HStack(spacing: 75) {
                                Text("Stroke, dementia, or other cerebrovascular disease or neurologic condition")
                                    .bold()
                                    .foregroundColor(.primary)
                                    .frame(width: 250, alignment: .leading)
                                
                                Image(systemName: self.isStroke ? "checkmark.circle.fill" :  "circle")
                                    .foregroundColor(.blue)
                                    .font(.system(size: 25))
                            }
                            
                            
                            
                        }.padding()
                    })
                  
                    Button(action: {
                        
                        
                        
                        //Toggle of other checked items upon click
                               
                        if self.isSickleCell == false {
                            
                            self.isSickleCell.toggle()
                        }
                        
                        else {
                            self.isSickleCell.toggle()
                        }
                       
                
                        
                        
                        // Action to Display Check Mark when  button is pressed
                        
                        
 
                        
                        // Tap Action for responding Next button
                        
                        if
                            self.isSickleCell == true
                        {
                            self.didTap = true}
                        else {
                            self.didTap = true
                        }
                        
                        // Action Tells the Screener Status what is selected
                        
                        if
                            self.isSickleCell == true {
                            
                            self.screenerStatus.isSickleCellSelected = true
                                
                            }
                        
                        else {
                            
                            self.screenerStatus.isSickleCellSelected = false
                        }
                        
                        
                        
                    }, label: {
                        ZStack {
                            Spacer()
                                .frame(width: 375, height: 100, alignment: .center)
                                .background(Color(.init(white: 1, alpha: 1)))
                                .cornerRadius(15)
                            HStack(spacing: 75) {
                                Text("Sickel cell disease, thalassemia, or other blood disorder")
                                    .bold()
                                    .foregroundColor(.primary)
                                    .frame(width: 250, alignment: .leading)
                                
                                Image(systemName: self.isSickleCell ? "checkmark.circle.fill" :  "circle")
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
                        
                        
 
                        
                        // Tap Action for responding Next button
                        
                        if
                            self.isNoneOfThese == true
                        {
                            self.didTap = true}
                        else {
                            self.didTap = true
                        }
                        
                        // Action Tells the Screener Status what is selected
                        
                        if
                            self.isNoneOfThese == true {
                            
                            self.screenerStatus.isNoCombrobitiesSelected = true
                                
                            }
                        
                        else {
                            
                            self.screenerStatus.isNoCombrobitiesSelected = false
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
                        destination: InTheLast14DaysScreenerView(screenerStatus: screenerStatus), isActive: $showNextPage,
                        
                        label: { Text("") }
                        
                    )
                    Button(action: {
                        
                        if
                            
                            self.isStroke || self.isObesity || self.isPregnant || self.isDiabetes || self.isSickleCell || self.isHeartCondition || self.isSmokerorVaping || self.isNoneOfThese == true {
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
            }
        }.padding(.bottom)
        .padding(.top)
                                            
            
            .background(Color(.init(white: 0.85, alpha: 1)))
     
        
    }
    
}


struct ComorbidityView_Previews: PreviewProvider {
    static var previews: some View {
        ComorbidityView(screenerStatus: ScreenerStatus.init())
    }
}
