//
//  FaceMaskSheetView.swift
//  CovidAlert
//
//  Created by Matthew Garlington on 12/26/20.
//

import SwiftUI

struct FaceMaskSheetView: View {
    var body: some View {
        NavigationView {
        ScrollView {
            VStack(alignment: .leading, spacing: 10) {

                Image(systemName: "shield.lefthalf.fill")
                    .foregroundColor(.green)
                    .font(.system(size: 40))
                   
        
            
            Text("Wearing a Cloth Face Covering")
                .bold()
                .font(.system(size: 35))
             
            
            Text("Using a cloth mask can protect yourself and others from germs and help slow the spread.")
                .frame(height: 150)
                .font(.system(size: 20))
            Spacer()
            
            Text("How To")
                .bold()
                .font(.title)
                
            Text("Buy a cloth face mask. If you can't find one, improvise. Create a mask from a tightly-woven cotton garment, like sheets or a bandana; T-shirt fabric will work in a pinch. Ensure your mask has multiple layers of fabric. Tap the button below to view the CDC's full instructions.")
                .frame(height: 200)
                .font(.system(size: 20))
            }.padding(.horizontal)
            VStack(alignment: .leading, spacing: 10) {
            Text("Wear your mask over your mouth and nose. Make sure it fits snugly but comfortably against the side of your face. It should have ear loops or tie in the back")
                .frame(height: 150)
                .font(.system(size: 20))
            Text("Wear your mask in public, especially in places where it's hard to practice physical distancing, like grocery stores or pharmacies")
                    .frame(height: 100)
                    .font(.system(size: 20))
            Text("When you remove the mask, take it off carefully without touching your eyes, nose, or mouth. Wash your hands immediatley.")
                        .frame(height: 100)
                        .font(.system(size: 20))
            Text("To sanitize your mask, routinely wash it in the washing machine in hot water.")
                            .frame(height: 100)
                            .font(.system(size: 20))
            Text("Don't use a cloth mask on children under the age of 2, on anyone who has trouble breathing, or on someone who can't voluntarily take the mask off.")
                                .frame(height: 100)
                                .font(.system(size: 20))
            Text("Don't use surgical or N95 masks. Healthcare workers and other medical first responders need these masks for protection.")
                                    .frame(height: 100)
                                    .font(.system(size: 20))
            Text("If you are an essential worker who has been directly exposed to COVID-19 or has had direct contact with someone known to have COVID-19, wear a face mask at work for 14 days after exposure")
                                        .frame(height: 150)
                                        .font(.system(size: 20))
                Spacer()
                ZStack {
                    Spacer()
                        .frame(width: 400, height: 50)
                        .background(Color(.init(white: 0.85, alpha: 1)))
                        .cornerRadius(10)
              
                    HStack {
                        
                        Link("How To Make A Mask", destination: URL(string: "https://www.cdc.gov/coronavirus/2019-ncov/prevent-getting-sick/how-to-make-cloth-face-covering.html")!)
                        
                        Spacer()
                        Image(systemName: "globe")
                            .font(.system(size: 20))
                    }.padding()
                   
                }
               
            }.padding(.horizontal)

        }.padding()
            }
        }
    }


struct FaceMaskSheetView_Previews: PreviewProvider {
    static var previews: some View {
        FaceMaskSheetView()
    }
}
