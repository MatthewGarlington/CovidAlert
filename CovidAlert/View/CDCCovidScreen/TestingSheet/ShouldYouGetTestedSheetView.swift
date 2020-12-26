//
//  ShouldYouGetTestedSheetView.swift
//  CovidAlert
//
//  Created by Matthew Garlington on 12/26/20.
//

import SwiftUI

struct ShouldYouGetTestedSheetView: View {
    var body: some View {
        NavigationView {
            ScrollView {
                VStack(alignment: .leading, spacing: 10) {
                    
                    Image(systemName: "rectangle.stack.person.crop.fill")
                        .foregroundColor(.gray)
                        .font(.system(size: 40))
                    
                    
                    
                    Text("Should you get tested?")
                        .bold()
                        .font(.system(size: 35))
                    
                    
                    Text("Knowing when to get tested can keep testing resources available for those who need it most.")
                        .frame(height: 100)
                        .font(.system(size: 20))
                    Spacer()
                    
                    Text("What To Know")
                        .bold()
                        .font(.title)
                    
                    Text("The most up-to-date way to assess your best next steps is to complete our Screening Tool")
                        .frame(height: 100)
                        .font(.system(size: 20))
                }.padding(.horizontal)
                VStack(alignment: .leading, spacing: 10) {
                    
                    Spacer()
                    NavigationLink(
                        destination: Text("Destination"),
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
                                    Image(systemName: "chevron.forward")
                                    
                                }.padding()
                            }
                        })
                }.padding()
                
            }.padding(.horizontal)
            
        }
    }
}
       
struct ShouldYouGetTestedSheetView_Previews: PreviewProvider {
    static var previews: some View {
        ShouldYouGetTestedSheetView()
    }
}
