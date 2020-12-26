//
//  PregnancyAndCovidSheetView.swift
//  CovidAlert
//
//  Created by Matthew Garlington on 12/26/20.
//

import SwiftUI

struct PregnancyAndCovidSheetView: View {
    var body: some View {
        NavigationView {
        ScrollView {
            VStack(alignment: .leading, spacing: 10) {

                Image(systemName: "person.2.square.stack.fill")
                    .foregroundColor(.pink)
                    .font(.system(size: 35))
                   
        
            
            Text("What about COVID-19, pregnancy, and newborns?")
                .bold()
                .font(.title)
            
            Text("At this time, pregnant women reportedly have the same COVID-19 risk as adults who are not pregnant. There is also no clear evidence that a fetus can be infected with COVID-19 in the womb.")
                .frame(height: 150)
                .font(.system(size: 20))
            Spacer()
            
            Text("What To Know")
                .bold()
                .font(.title)
                
            Text("Pregnant women are known to have a higher risk of severe illness when infected with viruses from the same family as COVID-19 and other viral respiratory infections. This is why pregnant women should take extra percautions to not get COVID-19. Avoid those who have or who have been exposed to COVID-19. Wash your hands often. Practice physical distancing. Clean and disinfect frequently touched surfaces daily")
                .frame(height: 250)
                .font(.system(size: 20))
                
            Text("During this time, it's normal for care providers to change some prenatal visits to telemedicine.")
                .frame(height: 100)
                .font(.system(size: 20))
            Text("Ask if your delivering hospital has changed any rules, like if you'll be asked to wear a face covering while giving birth or if there is a new visitor policy.")
                    .frame(height: 100)
                    .font(.system(size: 20))
            }
            Spacer()
        VStack(alignment: .leading, spacing: 10) {
            Text("Most Babies born to people with COVID-19 are not affected. However, once the baby is born, it is at risk for infection. New parents should take the same precautions to protect themselves from illness as pregnant women.")
                        .frame(height: 150)
                        .font(.system(size: 20))
            Text("So far, COVID-19 has not been detected in breast milk. If you are sick, including with COVID-19, wear a cloth face covering and wash your hands before each feeding. If pumping milk, do not share your pump with anyone else. Wash your hands before expressing milk or before touching the pump or bottle parts. Follow recommendations for cleaning the pump and parts after each use. If possible, have someone who is not sick feed the baby.")
                            .frame(height: 300)
                            .font(.system(size: 20))
            Text("Stay in Touch with your care team if you feel sick or develop COVID-19 symptoms.")
                            .frame(height: 100)
                            .font(.system(size: 20))
            Text("Pregnancy and postpartum can be stressful, and COVID-19 can add to feelings of uncertainty, stress, anxiety, or depression. Talk with your care provider if you are feeling overwhelmed. Seek help if you are in crisis and feel like you may harm yourself or your baby.")
                            .frame(height: 200)
                            .font(.system(size: 20))
            VStack(spacing: 0) {
                NavigationLink(
                    destination: Text("Washing your hands View Here"),
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
                destination: Text("Social Distancing sheets"),
                label: {
                    ZStack{
                 
                    Spacer()
                        .frame(width: 400, height: 50)
                        .background(Color(.init(white: 0.85, alpha: 1)))
                        .cornerRadius(10)
                        HStack {
                            
                    Text("Practicing Physical Distancing")
                        .foregroundColor(.blue)
                        .bold()
                    Spacer()
                        }.padding()
                    }
                })
            
                NavigationLink(
                    destination: Text("Cleaning and Disinfecting Sheet Here"),
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
                    destination: Text("Crisis Sheet info Here"),
                    label: {
                        ZStack{
                     
                        Spacer()
                            .frame(width: 400, height: 50)
                            .background(Color(.init(white: 0.85, alpha: 1)))
                            .cornerRadius(10)
                            HStack {
                                
                        Text("Helplines and Crisis Resources")
                            .foregroundColor(.blue)
                            .bold()
                        Spacer()
                            }.padding()
                        }
                    })
            }
            }
        
        }.padding()
    }
    }
}

struct PregnancyAndCovidSheetView_Previews: PreviewProvider {
    static var previews: some View {
        PregnancyAndCovidSheetView()
    }
}
