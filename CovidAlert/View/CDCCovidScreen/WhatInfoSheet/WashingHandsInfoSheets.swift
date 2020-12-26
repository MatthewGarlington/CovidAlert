//
//  WashingHandsInfoSheets.swift
//  CovidAlert
//
//  Created by Matthew Garlington on 12/26/20.
//

import SwiftUI

struct WashingHandsInfoSheets: View {
    var body: some View {
        NavigationView {
        ScrollView {
            VStack(alignment: .leading, spacing: 5) {

                Image(systemName: "star.fill")
                    .foregroundColor(.green)
                    .font(.system(size: 40))
                   
        
            
            Text("Washing Your Hands")
                .bold()
                .font(.system(size: 40))
             
            
            Text("Washing your hands is the best way to help you stay healthy. Here's how to do it.")
                .frame(height: 100)
                .font(.system(size: 20))
            Spacer()
            
            Text("Steps")
                .bold()
                .font(.title)
                
            Text("Wet your hands with clean, running water. Turn off the tap and apply soap.")
                .frame(height: 100)
                .font(.system(size: 20))
            }
            VStack(alignment: .leading, spacing: 0) {
            Text("Lather your hands by rubbing them together. Get the backs of your hands, between your fingers, and under your nails.")
                .frame(height: 100)
                .font(.system(size: 20))
            Text("Scrub your hands for 20 seconds. Sing 'Happy Birthday' twice while washing to gauge your timing.")
                    .frame(height: 150)
                    .font(.system(size: 20))
            Text("Rinse your hands under clean, running water. Air dry or use a clean towel.")
                        .frame(height: 100)
                        .font(.system(size: 20))
            Text("No soap or water? Use hand sanitizer that contains at least 60 percent alcohol. Apply the gel to the palm of one hand. Rub your hands together over all of your hands' surfaces and fingers until your hands are dry.")
                            .frame(height: 150)
                            .font(.system(size: 20))
            
            Text("Moisturize your hands to prevent yourself from getting cracked skin.")
                                .frame(height: 100)
                                .font(.system(size: 20))
            Text("In addition to washing your hands regularly, it's also a good idea to avoid touching your face and eyes.")
                                    .frame(height: 100)
                                    .font(.system(size: 20))
                
            }
        }.padding()
    }
    }
}

struct WashingHandsInfoSheets_Previews: PreviewProvider {
    static var previews: some View {
        WashingHandsInfoSheets()
    }
}
