//
//  ShouldYouSeeADoctorSheetView.swift
//  CovidAlert
//
//  Created by Matthew Garlington on 12/26/20.
//

import SwiftUI

struct ShouldYouSeeADoctorSheetView: View {
    var body: some View {
        NavigationView {
        ScrollView {
            VStack(alignment: .leading, spacing: 20) {

                Image(systemName: "staroflife.fill")
                    .foregroundColor(.red)
                    .font(.system(size: 35))
                   
        
            
            Text("When should I see a doctor?")
                .bold()
                .font(.title)
            
            Text("Knowing when to see a doctor can keep medical care available for those who need it most.")
                .frame(height: 100)
                .font(.system(size: 20))
            Spacer()
            
            Text("What To Know")
                .bold()
                .font(.title)
                
            Text("Most mild symptoms can be treated at home. The most up-to-date way to assess your best next steps is to complete our Screening Tool.")
                .frame(height: 100)
                .font(.system(size: 20))
                
            Text("If you need to see your doctor, call the office before you go. Many physicians' offices are doing virtual visits. They will tell you what to do based on your location.")
                .frame(height: 100)
                .font(.system(size: 20))
            Text("Testing is limited-availability across the country and is currently being prioritized for healthcare workers, emergency medical service providers, police, and other essential workers, so please consult your doctor for availability in your local area.")
                    .frame(height: 150)
                    .font(.system(size: 20))
            Text("If you develop emergency warning signs, call emergency services. Emergency warning signs include: severe, constant chect pain or pressure; extreme difficulty breathing; severe, constant lightheadedness; serious disorientation or unresponsiveness; or blue-tinted face or lips.")
                        .frame(height: 200)
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

struct ShouldYouSeeADoctorSheetView_Previews: PreviewProvider {
    static var previews: some View {
        ShouldYouSeeADoctorSheetView()
    }
}
