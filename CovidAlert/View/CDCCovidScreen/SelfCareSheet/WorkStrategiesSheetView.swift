//
//  WorkStrategiesSheetView.swift
//  CovidAlert
//
//  Created by Matthew Garlington on 12/26/20.
//

import SwiftUI

struct WorkStrategiesSheetView: View {
    var body: some View {
        NavigationView {
            ScrollView {
                VStack(alignment: .leading, spacing: 10) {
                    
                    Image(systemName: "network")
                        .foregroundColor(.blue)
                        .font(.system(size: 40))
                    
                    
                    
                    Text("Stategies for Work")
                        .bold()
                        .font(.system(size: 35))
                    Text("If you're able to work from home, maintain a schedule and stick to it.")
                        .frame(height: 100)
                        .font(.system(size: 20))
                    Text("Avoid working in bed or on the couch. If possible, create a seperate workspace.")
                        .frame(height: 100)
                        .font(.system(size: 20))
                    Text("Take walks (while maintaining a physical distance) to make up for the steps you usually take to get to and from work.")
                        .frame(height: 100)
                        .font(.system(size: 20))
                    Text("If you have children at home, communicate your child-care needs to your supervisor.")
                        .frame(height: 100)
                        .font(.system(size: 20))
                    Text("If you aren't working from home, follow the proper steps for hand-washing, cleaning and disinfecting, and symptom-monitoring.")
                        .frame(height: 100)
                        .font(.system(size: 20))
                    Text("If you live with someone who goes into work, ensure they properly wash their hands as soon as they get home. Disinfect anything they touched before they washed their hands.")
                        .frame(height: 150)
                        .font(.system(size: 20))
                    Text("If you're out of work because of coronavirus, know your options for unemployment and explore local community programs. Call your mortgage, student loan, utility, and credit card providers and let them know your sitaution.")
                        .frame(height: 200)
                        .font(.system(size: 20))
            
                }.padding(.horizontal)
               
                VStack(alignment: .leading, spacing: 10) {
                    ZStack {
                        Spacer()
                            .frame(width: 400, height: 50)
                            .background(Color(.init(white: 0.85, alpha: 1)))
                            .cornerRadius(10)
                  
                        HStack {
                            
                            Link("Get Unemployment Help", destination: URL(string: "https://www.usa.gov/unemployment")!)
                            
                            Spacer()
                            Image(systemName: "globe")
                                .font(.system(size: 20))
                        }.padding()
                       
                    }
                }.padding(.horizontal)
                
            }.padding(.horizontal)
            
        }
    }
}

struct WorkStrategiesSheetView_Previews: PreviewProvider {
    static var previews: some View {
        WorkStrategiesSheetView()
    }
}
