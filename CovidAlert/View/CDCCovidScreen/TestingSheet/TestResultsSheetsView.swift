//
//  TestResultsSheetsView.swift
//  CovidAlert
//
//  Created by Matthew Garlington on 12/26/20.
//

import SwiftUI

struct TestResultsSheetsView: View {
    var body: some View {
        NavigationView {
            ScrollView {
                VStack(alignment: .leading, spacing: 10) {
                    
                    Image(systemName: "doc.text.below.ecg.fill")
                        .foregroundColor(.red)
                        .font(.system(size: 40))
                    
                    
                    
                    Text("How do I get tested?")
                        .bold()
                        .font(.system(size: 35))
                    
                    
                    Text("Your doctor or state or local health department will decide if you should be tested.")
                        .frame(height: 100)
                        .font(.system(size: 20))
                    Spacer()
                    
                    Text("What To Know")
                        .bold()
                        .font(.title)
                    
                    Text("State and local health departments have received tests from the CDC. Individual doctors are coordinating testing through public health labs. They are also getting tests developed by commmercial manufactuers.")
                        .frame(height: 150)
                        .font(.system(size: 20))
                    Text("Different providers, states, and local health departments may have different testing recommendations.")
                        .frame(height: 100)
                        .font(.system(size: 20))
                    Text("Testing is limited-availability across the country and is currently being prioritizied for healthcare workers, emergency medical service providers, police, and other essential workers.")
                        .frame(height: 150)
                        .font(.system(size: 20))
                    Text("If you or someone you know has COVID-19 symptoms and needs to get tested, call your doctor. They will tell you what to do next.")
                        .frame(height: 100)
                        .font(.system(size: 20))
                }.padding(.horizontal)
                
            }.padding(.horizontal)
            
        }
    }
}
    

struct TestResultsSheetsView_Previews: PreviewProvider {
    static var previews: some View {
        TestResultsSheetsView()
    }
}
