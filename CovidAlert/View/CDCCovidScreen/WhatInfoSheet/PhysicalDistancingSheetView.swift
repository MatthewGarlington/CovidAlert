//
//  PhysicalDistancingSheetView.swift
//  CovidAlert
//
//  Created by Matthew Garlington on 12/26/20.
//

import SwiftUI

struct PhysicalDistancingSheetView: View {
    var body: some View {
        NavigationView {
        ScrollView {
            VStack(alignment: .leading, spacing: 5) {

                Image(systemName: "die.face.2.fill")
                    .foregroundColor(.blue)
                    .font(.system(size: 40))
                   
        
            
            Text("Physical Distancing")
                .bold()
                .font(.system(size: 40))
             
            
            Text("The virus spreads from person to person. Physical distancing means putting space between yourself and people outside your home to prevent the transmission of the disease.")
                .frame(height: 150)
                .font(.system(size: 20))
            Spacer()
            
            Text("How To")
                .bold()
                .font(.title)
                
            Text("Avoid physical contact with other people")
                .frame(height: 100)
                .font(.system(size: 20))
            }
            VStack(alignment: .leading, spacing: 0) {
            Text("Stay at least 6 feet away from people when outside your house. This includes friends or loved ones. Same goes for other people's pets.")
                .frame(height: 100)
                .font(.system(size: 20))
            Text("Do not invite guests to your home.")
                    .frame(height: 50)
                    .font(.system(size: 20))
            Text("Avoid groups and crowds.")
                        .frame(height: 50)
                        .font(.system(size: 20))
            Text("In places where physical distancing might be difficult, like the grocery store or pharmacy, do your best to stay 6 feet away from others. Wear cloth face covering.")
                            .frame(height: 150)
                            .font(.system(size: 20))
            
            Text("Physical distancing does not mean you shouldn't talk to others. Make sure you stay connected with your friends, family, and neighbors. Call, video chat, or stay connected using social media")
                                .frame(height: 150)
                                .font(.system(size: 20))
    
                
            }
        }.padding()
    }
    }
}


struct PhysicalDistancingSheetView_Previews: PreviewProvider {
    static var previews: some View {
        PhysicalDistancingSheetView()
    }
}
