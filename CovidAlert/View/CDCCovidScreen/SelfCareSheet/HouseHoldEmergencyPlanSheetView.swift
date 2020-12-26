//
//  HouseHoldEmergencyPlanSheetView.swift
//  CovidAlert
//
//  Created by Matthew Garlington on 12/26/20.
//

import SwiftUI

struct HouseHoldEmergencyPlanSheetView: View {
    var body: some View {
        NavigationView {
            ScrollView {
                VStack(alignment: .leading, spacing: 10) {
                    
                    Image(systemName: "house.fill")
                        .foregroundColor(.purple)
                        .font(.system(size: 40))
                    
                    
                    
                    Text("Create a Household Emergency Plan")
                        .bold()
                        .font(.system(size: 35))
                    
                    
                    Text("Have two weeks' worth of food in case a household member needs to isolate from others.")
                        .frame(height: 100)
                        .font(.system(size: 20))
                    
                    Text("Create an emergency contact list. This should include email addresses and phone numbers for family, friends, neighbors, carpool drivers, health care providers, teachers, employers, and the local public health department")
                        .frame(height: 200)
                        .font(.system(size: 20))
                    Text("If possible, those who are sick should have their own bedroom and bathroom. Choose the rooms in advance and prepare them with over-the-counter medications and extra household supplies")
                        .frame(height: 200)
                        .font(.system(size: 20))
                    Text("Join your neighborhood's social media page to get access to neighbors, information, and resources.")
                        .frame(height: 100)
                        .font(.system(size: 20))
                    Text("Know where your estate planning documents are and ensure they are up to date. This includes such paperwork as living wills, healthcare proxies, and power of attorney forms. While this may feel stressful, not having these documents in order can create added confusion and stress for you and your loved ones when this information is needed most.")
                        .frame(height: 250)
                        .font(.system(size: 20))
                    Text("If you live alone, stay in frequent contact with friends and family.")
                        .frame(height: 100)
                        .font(.system(size: 20))
                    Text("If you are worried about losing your job, research options for unemployment and other forms of assistance in advance.")
                        .frame(height: 100)
                        .font(.system(size: 20))
            
                }.padding(.horizontal)
                
            }.padding(.horizontal)
            
        }
    }
}

struct HouseHoldEmergencyPlanSheetView_Previews: PreviewProvider {
    static var previews: some View {
        HouseHoldEmergencyPlanSheetView()
    }
}
