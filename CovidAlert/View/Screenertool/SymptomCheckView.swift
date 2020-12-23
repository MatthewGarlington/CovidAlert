//
//  SymptomCheckView.swift
//  CovidAlert
//
//  Created by Matthew Garlington on 12/21/20.
//

import SwiftUI

struct SymptomCheckView: View {
    var body: some View {
        NavigationLink(
            destination: SymptomCheckDetailView(),
            label: {
                ZStack {
                Spacer()
                    .frame(width: 375, height: 100)
                    .background(Color.blue)
                    .shadow(radius: 10)
                    .cornerRadius(20)
        
                Text("Covid Screener")
                    .foregroundColor(.white)
                    .font(.title)
                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                
                
                }
        
            })
     
    }
}




    

struct SymptomCheckView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
        SymptomCheckView()
        }
    }
}
