//
//  QuestionarreLineOfWorkView.swift
//  CovidAlert
//
//  Created by Matthew Garlington on 12/21/20.
//

import SwiftUI

struct QuestionarreLineOfWorkView: View {
    @State var isMarked10:Bool = false
    @State var isMarked11:Bool = false
    @State var isMarked12:Bool = false
    
    var body: some View {
        ScrollView{
            VStack(spacing: 30) {
                
                Text("What Symptoms do you Currently have? (Check all that Apply) :")
                    .bold()
                    .font(.title2)
                
                
                ZStack(alignment: .leading) {
                    Spacer()
                        .frame(width: 400, height: 150)
                        .background(Color(.init(white: 0.95, alpha: 1)))
                        .cornerRadius(30)
                        .shadow(radius: 10)
                    HStack {
                        Text("Have you experienced any new gastrointestinal symptoms such as nausea, vomiting, diarrhea, or loss of appetite in the last few days?")
                            .foregroundColor(.black)
                            .font(.headline)
                            .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                            .padding(.horizontal)
                       
                        Spacer()
                        Button(action:{
                            self.isMarked10.toggle()
                            
                        }) {
                            Image(systemName: self.isMarked10 ? "checkmark.circle.fill" : "checkmark.circle")
                                .renderingMode(.original)
                                .font(.title)
                            
                            
                            
                        }.padding()
                    }
                }
                ZStack(alignment: .leading) {
                    Spacer()
                        .frame(width: 400, height: 150)
                        .background(Color(.init(white: 0.95, alpha: 1)))
                        .cornerRadius(30)
                        .shadow(radius: 10)
                    HStack {
                        Text("Are you isolating or quarantining because you may have been exposed to a person with COVID-19 or are worried that you may be sick with COVID-19?")
                            .foregroundColor(.black)
                            .font(.headline)
                            .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                            .padding(.horizontal)
                       
                        Spacer()
                        Button(action:{
                            self.isMarked11.toggle()
                            
                        }) {
                            Image(systemName: self.isMarked11 ? "checkmark.circle.fill" : "checkmark.circle")
                                .renderingMode(.original)
                                .font(.title)
                            
                            
                            
                        }.padding()
                    }
                }
                ZStack(alignment: .leading) {
                    Spacer()
                        .frame(width: 400, height: 300)
                        .background(Color(.init(white: 0.95, alpha: 1)))
                        .cornerRadius(30)
                        .shadow(radius: 10)
                    HStack {
                        Text("""
Within the past 14 days, have you been in close physical contact (6 feet or closer for a cumulative total of 15 minutes) with:

        • Anyone who is known to have laboratory-confirmed COVID-19? OR
        • Anyone who has any symptoms consistent with COVID-19?
""")
                            
                            .foregroundColor(.black)
                            .font(.headline)
                            .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                            .padding(.horizontal)
                       
                        Spacer()
                        Button(action:{
                            self.isMarked12.toggle()
                            
                        }) {
                            Image(systemName: self.isMarked12 ? "checkmark.circle.fill" : "checkmark.circle")
                                .renderingMode(.original)
                                .font(.title)
                            
                            
                            
                        }.padding()
                    }
                }
            }.padding(.horizontal)
            VStack {
        NavigationLink(
            destination: SymptomAnaylsisView(),
            label: {
                ZStack{
                    Spacer()
                        .frame(width: 400, height: 75)
                        .background(Color.blue)
                        .cornerRadius(30)
                        .shadow(radius: 10)
                    
                Text("Next")
                    .foregroundColor(.white)
                    .bold()
                    .font(.title2)
                }
            })
            }.padding(.top)
            
        }
    }
}




struct QuestionarreLineOfWorkView_Previews: PreviewProvider {
    static var previews: some View {
        QuestionarreLineOfWorkView()
    }
}
