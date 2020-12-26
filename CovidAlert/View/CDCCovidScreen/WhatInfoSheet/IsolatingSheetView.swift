//
//  IsolatingSheetView.swift
//  CovidAlert
//
//  Created by Matthew Garlington on 12/26/20.
//

import SwiftUI

struct IsolatingSheetView: View {
    var body: some View {
        NavigationView {
        ScrollView {
            VStack(alignment: .leading, spacing: 10) {

                Image(systemName: "die.face.1")
                    .foregroundColor(.purple)
                    .font(.system(size: 40))
                   
        
            
            Text("Isolate Yourself from Others")
                .bold()
                .font(.system(size: 35))
             
            
            Text("If you are sick with COVID-19 or have symptoms, isolate yourself. The purpose of isolation is to prevent spreading the infection to others by keeping sick people seperated from healthy people.")
                .frame(height: 150)
                .font(.system(size: 20))
            Spacer()
            
            Text("How To")
                .bold()
                .font(.title)
                
            Text("Stay home and monitor your symptoms. If they get significantly worse, contact your doctor immediatley. You can leave your house to receive medical care.")
                .frame(height: 150)
                .font(.system(size: 20))
            }.padding(.horizontal)
            VStack(alignment: .leading, spacing: 0) {
            Text("Do not leave the house to run errands yourself. Have a household member or friend run errands for you like picking up groceries or prescriptions.")
                .frame(height: 150)
                .font(.system(size: 20))
            Text("Do your best to stay away from your other household members, including pets.")
                    .frame(height: 100)
                    .font(.system(size: 20))
            Text("Ideally, designate a room and bathroom for your use only.")
                        .frame(height: 100)
                        .font(.system(size: 20))
            Text("Wash your hands frequently, espiecally if living with others in your home.")
                            .frame(height: 100)
                            .font(.system(size: 20))
            
            Text("If you cough or sneese, cover your mouth and nose with a tissue. Discard the tissue and immediatley wash your hands.")
                                .frame(height: 100)
                                .font(.system(size: 20))
            Text("Avoid sharing personal items such as dishes, towels, and bedding with other people in your house.")
                                    .frame(height: 100)
                                    .font(.system(size: 20))
                
            Text("Clean and disinfect frequently used surfaces often, like doorknobs and countertops.")
                                        .frame(height: 100)
                                        .font(.system(size: 20))
            Text("Wash laundry frequently and seperately from other household members' laundry.")
                                            .frame(height: 100)
                                            .font(.system(size: 20))
                
            Text("Wear a cloth mask over your face and nose if you have to be around other people, including those in your home. If you don't have a mask, improvise. Create a mask from a tightly-woven cotten garment like sheets or a bandana; T-shirt fabric will work in a pinch. If you can't wear a mask becuase of difficulty breathing, make sure caregivers wear one around you.")
                                                .frame(height: 250)
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

struct IsolatingSheetView_Previews: PreviewProvider {
    static var previews: some View {
        IsolatingSheetView()
    }
}
