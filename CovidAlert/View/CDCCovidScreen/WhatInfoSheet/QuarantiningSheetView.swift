//
//  QuarantiningSheetView.swift
//  CovidAlert
//
//  Created by Matthew Garlington on 12/26/20.
//

import SwiftUI

struct QuarantiningSheetView: View {
    var body: some View {
        NavigationView {
        ScrollView {
            VStack(alignment: .leading, spacing: 10) {

                Image(systemName: "die.face.1.fill")
                    .foregroundColor(.pink)
                    .font(.system(size: 40))
                   
        
            
            Text("Quarantining")
                .bold()
                .font(.system(size: 40))
             
            
            Text("If you think you might have been exposed to COVID-19, quarantine yourself. The purpose of this practice is to seperate yourself from others and restrict your movement while waiting to see if you become sick.")
                .frame(height: 150)
                .font(.system(size: 20))
            Spacer()
            
            Text("How To")
                .bold()
                .font(.title)
                
            Text("Stay home for 14 days after your suspected exposure.")
                .frame(height: 100)
                .font(.system(size: 20))
            }.padding(.horizontal)
            VStack(alignment: .leading, spacing: 0) {
            Text("Monitor your symptoms. Contact your doctor immediatley if symptoms develop.")
                .frame(height: 100)
                .font(.system(size: 20))
            Text("Try to minimize contact with others, including household members and pets. Be particularly mindful of staying away from those who are high risk for getting very sick from COVID-19.")
                    .frame(height: 150)
                    .font(.system(size: 20))
            Text("Wash your hands frequently")
                        .frame(height: 100)
                        .font(.system(size: 20))
            Text("If you cough or sneeze, cover your mouth and nose with a tissue. Discard the tissue and immediatley wash your hands.")
                            .frame(height: 100)
                            .font(.system(size: 20))
            
            Text("Avoid sharing personal items such as dishes, towels, and bedding with other people in your house")
                                .frame(height: 100)
                                .font(.system(size: 20))
            Text("Clean and disinfect frequently used surfaces often, like doorknobs and countertops")
                                    .frame(height: 100)
                                    .font(.system(size: 20))
                
            Text("Have a household member or friend run errands for you like picking up groceries or prescriptions, or get items delivered. If you do have to go out. practice physical distancing.")
                                        .frame(height: 150)
                                        .font(.system(size: 20))
            }.padding(.horizontal)
                VStack(spacing: 3) {
                    NavigationLink(
                        destination: WashingHandsInfoSheets(),
                        label: {
                            ZStack{
                         
                            Spacer()
                                .frame(width: 400, height: 50)
                                .background(Color(.init(white: 0.85, alpha: 1)))
                                .cornerRadius(10)
                                HStack {
                                    
                            Text("Washing Your Hands")
                                .foregroundColor(.blue)
                                .bold()
                            Spacer()
                                }.padding()
                            }
                        })

               
                NavigationLink(
                    destination: FaceMaskSheetView(),
                    label: {
                        ZStack{
                     
                        Spacer()
                            .frame(width: 400, height: 50)
                            .background(Color(.init(white: 0.85, alpha: 1)))
                            .cornerRadius(10)
                            HStack {
                                
                        Text("Wearing a Cloth Face Covering")
                            .foregroundColor(.blue)
                            .bold()
                        Spacer()
                            }.padding()
                        }
                    })
                
                    NavigationLink(
                        destination: CleaningInfoSheetView(),
                        label: {
                            ZStack{
                         
                            Spacer()
                                .frame(width: 400, height: 50)
                                .background(Color(.init(white: 0.85, alpha: 1)))
                                .cornerRadius(10)
                                HStack {
                                    
                            Text("Cleaning and Disinfecting Surfaces")
                                .foregroundColor(.blue)
                                .bold()
                            Spacer()
                                }.padding()
                            }
                        })
                    NavigationLink(
                        destination: SymptomMonitoringSheetView(),
                        label: {
                            ZStack{
                         
                            Spacer()
                                .frame(width: 400, height: 50)
                                .background(Color(.init(white: 0.85, alpha: 1)))
                                .cornerRadius(10)
                                HStack {
                                    
                            Text("Symptom Monitoring")
                                .foregroundColor(.blue)
                                .bold()
                            Spacer()
                                }.padding()
                            }
                        })
                
            }
        }.padding()
    }
    }
}


struct QuarantiningSheetView_Previews: PreviewProvider {
    static var previews: some View {
        QuarantiningSheetView()
    }
}
