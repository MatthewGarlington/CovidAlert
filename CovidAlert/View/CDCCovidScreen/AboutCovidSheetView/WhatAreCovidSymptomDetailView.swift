//
//  WhatAreCovidSymptomDetailView.swift
//  CovidAlert
//
//  Created by Matthew Garlington on 12/26/20.
//

import SwiftUI

struct WhatAreCovidSymptomDetailView: View {
    
    let symptomLink = ("Full Symptom List")

    
    
    var body: some View {
        NavigationView {
        ScrollView {
            VStack(alignment: .leading, spacing: 5) {
         
                
                
                Image(systemName: "waveform.path.ecg")
                    .foregroundColor(.green)
                    .font(.system(size: 50))
                   
            
            
            Text("What are COVID-19's symptoms?")
                .bold()
                .font(.title)
                .frame(height: 150)
            
            Text("The most common symptoms are very similar to other viruses: fever, cough, and difficulty breathing.")
                .frame(height: 100)
                .font(.system(size: 20))
            Spacer()
            
            Text("What To Know")
                .bold()
                .font(.title)
                
            Text("Common symptoms of COVID-19 are changing as more is learned about the disease. For the most up to date symptom list, visit the CDC's website.")
                .frame(height: 150)
                .font(.system(size: 20))
                
            Text("Symptoms may appear 2 to 14 days after exposure and range from mild to severe illness.")
                .frame(height: 100)
                .font(.system(size: 20))
            Text("If you or someone you know has symptoms, our Screening Tool will recommend best next steps.")
                .frame(height: 100)
                .font(.system(size: 20))
        ZStack {
            Spacer()
                .frame(width: 400, height: 50)
                .background(Color(.init(white: 0.85, alpha: 1)))
                .cornerRadius(10)
      
            HStack {
                
                Link(symptomLink, destination: URL(string: "https://www.cdc.gov/coronavirus/2019-ncov/symptoms-testing/symptoms.html")!)
                
                Spacer()
                Image(systemName: "globe")
                    .font(.system(size: 20))
            }.padding()
           
        }
                NavigationLink(
                    destination: Text("Destination"),
                    label: {
                        ZStack{
                     
                        Spacer()
                            .frame(width: 400, height: 50)
                            .background(Color(.init(white: 0.85, alpha: 1)))
                            .cornerRadius(10)
                            HStack {
                                
                        Text("Begin Screening")
                            .bold()
                        Spacer()
                            }.padding()
                        }
                    })

            }.padding()
        }
        }.navigationTitle("")
        .navigationBarHidden(true)
}
}


struct WhatAreCovidSymptomDetailView_Previews: PreviewProvider {
    static var previews: some View {
        WhatAreCovidSymptomDetailView()
    }
}
