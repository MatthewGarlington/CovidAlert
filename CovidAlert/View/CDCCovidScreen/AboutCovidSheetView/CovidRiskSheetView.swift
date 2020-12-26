//
//  CovidRiskSheetView.swift
//  CovidAlert
//
//  Created by Matthew Garlington on 12/26/20.
//

import SwiftUI

struct CovidRiskSheetView: View {
    var body: some View {
        NavigationView {
        ScrollView {
            VStack(alignment: .leading, spacing: 5) {

                Image(systemName: "person.2.fill")
                    .foregroundColor(.purple)
                    .font(.system(size: 35))
                   
        
            
            Text("Who is at high risk for COVID-19?")
                .bold()
                .font(.title)
            
            Text("Everyone is at risk of getting COVID-19, but some people are at a higher risk of serious illness.")
                .frame(height: 100)
                .font(.system(size: 20))
            Spacer()
            
            Text("What To Know")
                .bold()
                .font(.title)
                
            Text("Generally speaking, adults aged 65 and older and people of any age who have underlying medical conditions may be at higher risk for serious illness from COVID-19.")
                .frame(height: 100)
                .font(.system(size: 20))
                
            Text("The most up-to-date way to assess your risk is to complete our Screening Tool")
                .frame(height: 100)
                .font(.system(size: 20))
                
                NavigationLink(
                    destination: CDCScreenerTool(),
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
    }
    }
}

struct CovidRiskSheetView_Previews: PreviewProvider {
    static var previews: some View {
        CovidRiskSheetView()
    }
}
