//
//  SymptomMonitoringSheetView.swift
//  CovidAlert
//
//  Created by Matthew Garlington on 12/26/20.
//

import SwiftUI

struct SymptomMonitoringSheetView: View {
    var body: some View {
        NavigationView {
        ScrollView {
            VStack(alignment: .leading, spacing: 5) {

                Image(systemName: "cross.case.fill")
                    .foregroundColor(.red)
                    .font(.system(size: 40))
                   
        
            
            Text("Symptom Monitoring")
                .bold()
                .font(.system(size: 40))
             
            
            Text("Keep track of your symptoms if you suspect you have COVID-19, have been around someone who has tested positive for it, or you've been diagnosed.")
                .frame(height: 150)
                .font(.system(size: 20))
            Spacer()
            
            Text("How To")
                .bold()
                .font(.title)
                
            Text("If you develop emergency warning signs, seek emergency care right away. These signs include: Severe, constant chest pain or pressure; extreme diffculty breathing; severe, constant lightheadedness; serious disorientation or unresponsiveness; or blue-tinted face or lips.")
                .frame(height: 200)
                .font(.system(size: 20))
            }.padding(.horizontal)
            VStack(alignment: .leading, spacing: 0) {
            Text("Have your medical provider's contact information on hand.")
                .frame(height: 100)
                .font(.system(size: 20))
            Text("Keep a log of your symptoms, including your temperature")
                    .frame(height: 100)
                    .font(.system(size: 20))
            Text("Avoid groups and crowds.")
                        .frame(height: 50)
                        .font(.system(size: 20))
            Text("If your symptoms worsen, call your doctor to update them and they will tell you what to do next")
                            .frame(height: 100)
                            .font(.system(size: 20))
            
            Text("You can use our Screning Tool to help you determine next steps based on your symptom and risk factors.")
                                .frame(height: 100)
                                .font(.system(size: 20))
    
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
           
            }.padding(.horizontal)
        }.padding()
    }
    }
}


struct SymptomMonitoringSheetView_Previews: PreviewProvider {
    static var previews: some View {
        SymptomMonitoringSheetView()
    }
}
