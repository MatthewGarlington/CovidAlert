//
//  WhatIsCovid19DetailView.swift
//  CovidAlert
//
//  Created by Matthew Garlington on 12/26/20.
//

import SwiftUI

struct WhatIsCovid19DetailView: View {
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 5) {
            ZStack{
                Circle()
                    .foregroundColor(.orange)
                    .frame(width: 50)
                
                Image(systemName: "staroflife.fill")
                    .foregroundColor(.white)
                    .font(.system(size: 35))
                   
            }
            
            Text("What is COVID-19?")
                .bold()
                .font(.title)
            
            Text("COVID-19 is a respiratory disease caused by coronavirus that can be spread from person to person. Covid-19 is short for 'coronavirus disease 2019'")
                .frame(height: 200)
                .font(.system(size: 20))
            Spacer()
            
            Text("What To Know")
                .bold()
                .font(.title)
                
            Text("The virus is thought to spread mainly between people who are in close contact with one another (about 6 feet) and through respiratory droplets produced when an infected person coughs or sneezes.")
                .frame(height: 150)
                .font(.system(size: 20))
                
            Text("People are most contagious when they are the sickest. But those who don't have a lot of symptoms can still pass the virus on to others.")
                .frame(height: 150)
                .font(.system(size: 20))
            Text("There are currenlty few vaccines but long-term effectiviness has yet to be determined")
                .frame(height: 150)
                .font(.system(size: 20))
            }.padding()
        }
    }
}


struct WhatIsCovid19DetailView_Previews: PreviewProvider {
    static var previews: some View {
        WhatIsCovid19DetailView()
    }
}
