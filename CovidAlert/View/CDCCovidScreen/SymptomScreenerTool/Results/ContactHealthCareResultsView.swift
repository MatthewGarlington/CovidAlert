//
//  ContactHealthCareResultsView.swift
//  CovidAlert
//
//  Created by Matthew Garlington on 12/30/20.
//

import SwiftUI

struct ContactHealthCareResultsView: View {
    
    @ObservedObject var screenerStatus: ScreenerStatus
    
    var body: some View {
        NavigationView {
        ScrollView {
            VStack (alignment: .leading){
        VStack(alignment: .leading, spacing: 20) {
            HStack(alignment: .top, spacing: 10) {
                
                NavigationLink(
                    destination: CDCHomeView(screenerStatus: screenerStatus),
                    label: {
                      
        Image(systemName: "xmark.circle.fill")
            .font(.system(size: 30))
            .foregroundColor(.gray)
            .padding()
        
            })
        Text("Contact a Healthcare Provider")
            .font(.title)
            .bold()
            .padding(.top)
            .padding()
            
           
        }
            Text("Discuss your symptoms with a doctor or a medical professional. Call before you visit a medical facility. You can also consider a relemedicine appointment.")
                .padding()
            Text("Your 6 Next Steps")
                .bold()
                .padding(.horizontal)
              
        }
            ZStack {
                Spacer()
                    .frame(width: 400, height: 400, alignment: .center)
                    .background(Color(.init(white: 1, alpha: 1)))
                    .cornerRadius(15)
             
                HStack(alignment: .top, spacing: 30)  {
                  
                    Image(systemName:  "1.circle.fill")
                        .foregroundColor(.blue)
                        .font(.system(size: 30))
                        .padding()
                   
                   
                
                    VStack(alignment: .leading) {
                   
                    Text("Avoid contact with others until symptoms improve")
                        .bold()
                        .foregroundColor(.primary)
                        .padding(.bottom)
                   
                    
                    
                    Text("You should not go to work, school, or public areas. You should avoid public transportation and ride sharing.")
                        .padding(.bottom)
              
                    
                  
                    Text("When to end Isolation")
                            .bold()
                            .foregroundColor(.primary)
                            .padding(.bottom)
                       
                        
                        
                    Text("You should stay away from others for at least 10 days from when symptoms first appeared. Isolation can end if your symptoms improve significantly and if you have had no fever for 24 hours without the use of medicine.")
                        
                    } .padding(.horizontal)
                    .frame(width: 300)
                    
                  
                }
                    
                }
                
                ZStack {
                    Spacer()
                        .frame(width: 400, height: 300, alignment: .center)
                        .background(Color(.init(white: 1, alpha: 1)))
                        .cornerRadius(15)
                 
                    HStack(alignment: .top, spacing: 30)  {
                      
                        Image(systemName:  "2.circle.fill")
                            .foregroundColor(.blue)
                            .font(.system(size: 30))
                            .padding()
                       
                       
                    
                        VStack(alignment: .leading) {
                       
                        Text("Watch for emergency signs")
                            .bold()
                            .foregroundColor(.primary)
                            .padding(.bottom)
                       
                        
                        
                        Text("Call 911 if you develop any emergency warning signs such as severe, constant chest pain or pressure; extreme difficulty breathing; severe, constant lightheadedness; serious disorientation or unresponsiveness; blue-tinted face or lips.")
                            .padding(.bottom)
                  
                        
                            
                        } .padding(.horizontal)
                        .frame(width: 300)
                        
                      
                    }
                        
                }.padding(.top)
                
                ZStack {
                    Spacer()
                        .frame(width: 400, height: 200, alignment: .center)
                        .background(Color(.init(white: 1, alpha: 1)))
                        .cornerRadius(15)
                 
                    HStack(alignment: .top, spacing: 30)  {
                      
                        Image(systemName:  "3.circle.fill")
                            .foregroundColor(.blue)
                            .font(.system(size: 30))
                            .padding()
                       
                       
                    
                        VStack(alignment: .leading) {
                       
                        Text("Wear a mask around others")
                            .bold()
                            .foregroundColor(.primary)
                            .padding(.bottom)
                       
                        
                        
                        Text("You should wear a mask or cloth covering over your nose and mouth if you must be around other people in home or be outside of the home")
                            .padding(.bottom)
                  
                        
                            
                        } .padding(.horizontal)
                        .frame(width: 300)
                        
                      
                    }
                        
                }.padding(.top)
                
                ZStack {
                    Spacer()
                        .frame(width: 400, height: 300, alignment: .center)
                        .background(Color(.init(white: 1, alpha: 1)))
                        .cornerRadius(15)
                 
                    HStack(alignment: .top, spacing: 30)  {
                      
                        Image(systemName:  "4.circle.fill")
                            .foregroundColor(.blue)
                            .font(.system(size: 30))
                            .padding()
                       
                       
                    
                        VStack(alignment: .leading) {
                       
                        Text("Wash hands frequently")
                            .bold()
                            .foregroundColor(.primary)
                            .padding(.bottom)
                       
                        
                        
Text("""
Wash hands with soap and water for at least 20 seconds.
                            
You should avoid touching your eyes, nose, and mouth with unwashed hands.

If soap and water are not available, use hand sanitizer that contains at least 60% alcohol.
                                    
""")
                            .padding(.bottom)
                  
                        
                            
                        } .padding(.horizontal)
                        .frame(width: 300)
                        
                      
                    }
                        
                }.padding(.top)
                
                ZStack {
                    Spacer()
                        .frame(width: 400, height: 125, alignment: .center)
                        .background(Color(.init(white: 1, alpha: 1)))
                        .cornerRadius(15)
                 
                    HStack(alignment: .top, spacing: 30)  {
                      
                        Image(systemName:  "5.circle.fill")
                            .foregroundColor(.blue)
                            .font(.system(size: 30))
                            .padding()
                       
                       
                    
                        VStack(alignment: .leading) {
                       
                        Text("Rest and take care")
                            .bold()
                            .foregroundColor(.primary)
                            .padding(.bottom)
                       
                        
                        
                        Text("You should eat well, drink fluids, and get plenty of restc")
                            .padding(.bottom)
                  
                        
                            
                        } .padding(.horizontal)
                        .frame(width: 300)
                        
                      
                    }
                        
                }.padding(.top)
                
                ZStack {
                    Spacer()
                        .frame(width: 400, height: 375, alignment: .center)
                        .background(Color(.init(white: 1, alpha: 1)))
                        .cornerRadius(15)
                 
                    HStack(alignment: .top, spacing: 30)  {
                      
                        Image(systemName:  "6.circle.fill")
                            .foregroundColor(.blue)
                            .font(.system(size: 30))
                            .padding()
                       
                       
                    
                        VStack(alignment: .leading) {
                       
                        Text("Further testing may not be needed at this time")
                            .bold()
                            .foregroundColor(.primary)
                            .padding(.bottom)
                       
                        
                        
                        Text("""

        If your recent test was done after your e4xposure occurred or symptoms appeared, you do not need to get tested again for COVID-19 unless suggested by your healthcare provider or workplace.

        If your recent test was done before you were exposed or developed symptoms, another test for COVID-19 is recommended.
        
                             
    """)
                            .padding(.bottom)
                  
                        
                            
                        } .padding(.horizontal)
                        .frame(width: 300)
                        
                      
                    }
                        
                }.padding(.top)
            }.padding()
        
        } .background(Color(.init(white: 0.85, alpha: 1)))
        .navigationBarHidden(true)
            
        }
    }
  
    }


struct ContactHealthCareResultsView_Previews: PreviewProvider {
    static var previews: some View {
        ContactHealthCareResultsView(screenerStatus: ScreenerStatus.init())
    }
}
