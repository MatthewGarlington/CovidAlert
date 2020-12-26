//
//  CleaningInfoSheetView.swift
//  CovidAlert
//
//  Created by Matthew Garlington on 12/26/20.
//

import SwiftUI

struct CleaningInfoSheetView: View {
    var body: some View {
        NavigationView {
        ScrollView {
            VStack(alignment: .leading, spacing: 10) {

                Image(systemName: "wand.and.stars.inverse")
                    .foregroundColor(.yellow)
                    .font(.system(size: 40))
                   
        
            
            Text("Cleaning and Disinfecting Surfaces")
                .bold()
                .font(.system(size: 35))
             
            
            Text("Commonly used surfaces should be regularly cleaned and disinfected")
                .frame(height: 150)
                .font(.system(size: 20))
            Spacer()
            
            Text("How To")
                .bold()
                .font(.title)
                
            Text("It's always a good idea to routinely clean and disinfect frequently touched surfaces like tables, doorknobs, light switches, handles, desk, toilets, faucets, and sinks. But if you have a suspected or confirmed case of COVID-19, be vigilant about doing this daily.")
                .frame(height: 200)
                .font(.system(size: 20))
            }.padding(.horizontal)
            VStack(alignment: .leading, spacing: 10) {
            Text("First, clean dirty surfaces with soap and water. Cleaning will remove dirt and lower the number of germs-but it will not kill germs.")
                .frame(height: 150)
                .font(.system(size: 20))
            Text("Next, disinfect surfaces to kill germs. Disinfecting after cleaning can further lower the risk of spreading an infection. Most common EPA-registered household disinfectants will work. Or dilute your household bleach with 1/3 cup of bleach per gallon of water.")
                    .frame(height: 100)
                    .font(.system(size: 20))
            Text("Wear dedicated gloves for COVID-19 related cleaning and disinfecting or use disposable gloves and discard them after each use.")
                        .frame(height: 100)
                        .font(.system(size: 20))
           
            }.padding(.horizontal)

        }.padding()
            }
        }
    }


struct CleaningInfoSheetView_Previews: PreviewProvider {
    static var previews: some View {
        CleaningInfoSheetView()
    }
}
