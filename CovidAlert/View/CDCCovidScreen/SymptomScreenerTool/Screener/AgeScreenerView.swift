//
//  AgeScreenerView.swift
//  CovidAlert
//
//  Created by Matthew Garlington on 12/28/20.
//

import SwiftUI

extension Color {
    static let offWhite = Color(red: 225 / 255, green: 225 / 255, blue: 235 / 255)
}
struct SimpleButtonStyle: ButtonStyle {
    func makeBody(configuration: Self.Configuration) -> some View {
        configuration.label
            .padding(10)
            .background(
                Group {
                    if configuration.isPressed {
                        Capsule()
                            .fill(Color.offWhite)
                    } else {
                        Capsule()
                            .fill(Color.offWhite)
                            .shadow(color: Color.black.opacity(0.2), radius: 10, x: 10, y: 10)
                            .shadow(color: Color.white.opacity(0.7), radius: 10, x: -5, y: -5)
                    }
                }
            )
    }
}

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
            
            VStack(spacing: 50){
                
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

                        HStack(spacing: 250) {
                            Text("Under 18")
                                .bold()
                                .foregroundColor(.primary)
                                .frame(width: 75)
                            
                            Image(systemName: self.isUnder18Checked ? "checkmark.circle.fill" :  "circle")
                                .foregroundColor(Color.init(#colorLiteral(red: 0.3067349494, green: 0.3018456101, blue: 0.7518180013, alpha: 1)))
                                .font(.system(size: 25))
                                .frame(width: 10)
                        }
                        
                        
                        
                    }.padding()
                 
                })
                .buttonStyle(SimpleButtonStyle())
                
                
                
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
                      
                     
                        HStack(spacing: 250) {
                            Text("Between 18 and 64")
                                .bold()
                                .foregroundColor(.primary)
                                .frame(width: 85)
                            
                            
                            Image(systemName: self.is64checked ? "checkmark.circle.fill" :  "circle")
                                .foregroundColor(Color.init(#colorLiteral(red: 0.3067349494, green: 0.3018456101, blue: 0.7518180013, alpha: 1)))
                                .font(.system(size: 25))
                                .frame(width: 10)
                        }
                        
                        
                    }.padding()
                })    .buttonStyle(SimpleButtonStyle())
                
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
                 
                        HStack(spacing: 240) {
                            Text("65 or Older")
                                .bold()
                                .foregroundColor(.primary)
                            
                            Image(systemName: self.isOver65Checked ? "checkmark.circle.fill" :  "circle")
                                .foregroundColor(Color.init(#colorLiteral(red: 0.3067349494, green: 0.3018456101, blue: 0.7518180013, alpha: 1)))
                                .font(.system(size: 25))
                        }
                        
                        
                        
                    }.padding()
                }) .buttonStyle(SimpleButtonStyle())
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
                            .background(didTap ? Color.init(#colorLiteral(red: 0.3036714792, green: 0.2938330173, blue: 0.7397083044, alpha: 1)) : Color.gray)
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

struct AgeScreenerView_Previews: PreviewProvider {
    static var previews: some View {
        AgeScreenerView(screenerStatus: ScreenerStatus.init())
    }
}
