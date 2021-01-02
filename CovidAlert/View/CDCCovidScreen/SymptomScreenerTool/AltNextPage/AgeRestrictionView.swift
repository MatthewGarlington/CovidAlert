//
//  AgeRestrictionView.swift
//  CovidAlert
//
//  Created by Matthew Garlington on 12/28/20.
//

import SwiftUI

struct AgeRestrictionView: View {
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 100) {
        Text("This tool is intended for people who are at least 18 years old")
            .bold()
            .font(.system(size: 30))
         
        
        Text("Visit the CDC site to get information about COVID-19 and younger people")
            .font(.system(size: 20))
            }.padding()
        }
    }
}

struct AgeRestrictionView_Previews: PreviewProvider {
    static var previews: some View {
        AgeRestrictionView()
    }
}
