//
//  CovidContractionSheetView.swift
//  CovidAlert
//
//  Created by Matthew Garlington on 12/26/20.
//

import SwiftUI

struct CovidContractionSheetView: View {
    var body: some View {
        NavigationView {
            ScrollView {
                VStack(alignment: .leading, spacing: 10) {
                    
                    Image(systemName: "bolt.heart.fill")
                        .foregroundColor(.red)
                        .font(.system(size: 40))
            
                 
                    Text("What To Do If You Get COVID-19")
                        .bold()
                        .font(.system(size: 35))
                  
                }.padding(.horizontal)
            
                VStack(alignment: .leading, spacing: 10) {
                    
                    Text("Stay Home and monitor your symptoms. If they get worse, contact your doctor immediately. Leave your house only to receive medical care.")
                        .frame(height: 150)
                        .font(.system(size: 20))
                    
                    Text("Do your best to stay away from your other household members, including pets.")
                        .frame(height: 100)
                        .font(.system(size: 20))
                    Text("If possible, designate a room for your use only. Ideally use your own bathroom, too.")
                        .frame(height: 100)
                        .font(.system(size: 20))
                    Text("Was your hands frequently.")
                        .frame(height: 100)
                        .font(.system(size: 20))
                    Text("If you cough or sneeze, cover your mouth and nose with a tissue. Discard the tissue and immediatley wash your hands.")
                        .frame(height: 100)
                        .font(.system(size: 20))
                        
                    }.padding(.horizontal)
                VStack(alignment: .leading, spacing: 10)  {
                    Text("Avoid sharing personal items such as dishes, towels, and bedding with other people in your hosue.")
                        .frame(height: 100)
                        .font(.system(size: 20))
                    Text("Regularly clean and disinfect frequently used surfaces, particularly door knobs, faucet handles, and counter tops.")
                        .frame(height: 100)
                        .font(.system(size: 20))
                    Text("Wash laundry frequently.")
                        .frame(height: 100)
                        .font(.system(size: 20))
                    Text("Have a household member or friend run errands for you like picking up groceries or prescriptions.")
                        .frame(height: 100)
                        .font(.system(size: 20))
                    Text("Wear a cloth mask over your face and nose if you have to be around other people, including those in your home. If you don't have a mask, improvise. Create a mask from a tightly-woven cotton garment, like sheets or a bandana; T-shirt fabric will work in a pinch. Don't use a cloth mask on children under the age of 2, anyone who has trouble breathing, or someone who can't voluntarily take the mask off, but their caregivers should wear one.")
                            .frame(height: 300)
                            .font(.system(size: 20))
                    Text("If you have questions about your best next steps complete our Screening Tool")
                        .frame(height: 100)
                        .font(.system(size: 20))
                    
                    Spacer()
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
                                    Image(systemName: "chevron.forward")
                                    
                                }.padding()
                            }
                        })
            
                }.padding(.horizontal)
                
            }.padding(.horizontal)
            
        }
    }
}


struct CovidContractionSheetView_Previews: PreviewProvider {
    static var previews: some View {
        CovidContractionSheetView()
    }
}
