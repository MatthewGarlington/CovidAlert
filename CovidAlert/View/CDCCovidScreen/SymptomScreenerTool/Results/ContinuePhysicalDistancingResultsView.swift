//
//  ContinuePhysicalDistancingResultsView.swift
//  CovidAlert
//
//  Created by Matthew Garlington on 12/30/20.
//

import SwiftUI

struct ContinuePhysicalDistancingResultsView: View {
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
        Text("Continue Physical Distancing")
            .font(.title)
            .bold()
            .padding(.top)
            .padding()
         
            }
            
            Text("You should wear a mask and stay six feet away from anyone you don't live with.")
                .padding()
            Text("Your 6 Next Steps")
                .bold()
                .padding(.horizontal)
              
        }
            ZStack {
                Spacer()
                    .frame(width: 400, height: 350, alignment: .center)
                    .background(Color(.init(white: 1, alpha: 1)))
                    .cornerRadius(15)
             
                HStack(alignment: .top, spacing: 30)  {
                  
                    Image(systemName:  "1.circle.fill")
                        .foregroundColor(.blue)
                        .font(.system(size: 30))
                        .padding()
                   
                   
                
                    VStack(alignment: .leading) {
                   
                    Text("Stay six feet away from others")
                        .bold()
                        .foregroundColor(.primary)
                        .padding(.bottom)
                   
                    
                    
                    Text("You should avoid crowds of people and social gatherings, particularly indoors. You should also stay six feet apart from anyone you don't live with. You should especially avoid anyone who's showing symptoms.")
                        .padding(.bottom)

                        
                    Text("Physical distancing can also help you avoid catching COVID-19 from someone who isn't showing any symptoms")
                        
                    } .padding(.horizontal)
                    .frame(width: 300)
                    
                  
                }
                    
                }
                
                ZStack {
                    Spacer()
                        .frame(width: 400, height: 175, alignment: .center)
                        .background(Color(.init(white: 1, alpha: 1)))
                        .cornerRadius(15)
                 
                    HStack(alignment: .top, spacing: 30)  {
                      
                        Image(systemName:  "2.circle.fill")
                            .foregroundColor(.blue)
                            .font(.system(size: 30))
                            .padding()
                       
                       
                    
                        VStack(alignment: .leading) {
                       
                        Text("Take care and prepare")
                            .bold()
                            .foregroundColor(.primary)
                            .padding(.bottom)
                       
                        
                        
                        Text("You should eat well, exercise regularly, and get plenty of sleep. You should also stay connected with family and friends")
                            .padding(.bottom)
                  
                        
                            
                        } .padding(.horizontal)
                        .frame(width: 300)
                        
                      
                    }
                        
                }.padding(.top)
                
                ZStack {
                    Spacer()
                        .frame(width: 400, height: 175, alignment: .center)
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
                        .frame(width: 400, height: 325, alignment: .center)
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
                        .frame(width: 400, height: 150, alignment: .center)
                        .background(Color(.init(white: 1, alpha: 1)))
                        .cornerRadius(15)
                 
                    HStack(alignment: .top, spacing: 30)  {
                      
                        Image(systemName:  "5.circle.fill")
                            .foregroundColor(.blue)
                            .font(.system(size: 30))
                            .padding()
                       
                       
                    
                        VStack(alignment: .leading) {
                       
                        Text("Consider getting a flu shot")
                            .bold()
                            .foregroundColor(.primary)
                            .padding(.bottom)
                       
                        
                        
                        Text("Getting a flu shot is important because the flu can hurt your body's ability to fight COVID-19")
                            .padding(.bottom)
                  
                        
                            
                        } .padding(.horizontal)
                        .frame(width: 300)
                        
                      
                    }
                        
                }.padding(.top)
                
                ZStack {
                    Spacer()
                        .frame(width: 400, height: 225, alignment: .center)
                        .background(Color(.init(white: 1, alpha: 1)))
                        .cornerRadius(15)
                 
                    HStack(alignment: .top, spacing: 30)  {
                      
                        Image(systemName:  "6.circle.fill")
                            .foregroundColor(.blue)
                            .font(.system(size: 30))
                            .padding()
                       
                       
                    
                        VStack(alignment: .leading) {
                       
                        Text("Watch for symptoms")
                            .bold()
                            .foregroundColor(.primary)
                            .padding(.bottom)
                       
                        
                        
                        Text("Watch for COVID-19 symptoms such as fever, cough, and difficulty breathing.")
                            .padding(.bottom)
                  
                        Text("If anything changes, you can take the questionarre again.")
                                .padding(.bottom)
                            
                        } .padding(.horizontal)
                        .frame(width: 300)
                        
                      
                    }
                        
                }.padding(.top)
                
                ZStack {
                    Spacer()
                        .frame(width: 400, height: 225, alignment: .center)
                        .background(Color(.init(white: 1, alpha: 1)))
                        .cornerRadius(15)
                 
                    HStack(alignment: .top, spacing: 30)  {
                      
                        Image(systemName:  "x.circle.fill")
                            .foregroundColor(.gray)
                            .font(.system(size: 30))
                            .padding()
                       
                       
                    
                        VStack(alignment: .leading) {
                       
                        Text("No testing needed at this time")
                            .bold()
                            .foregroundColor(.primary)
                            .padding(.bottom)
                       
                        
                        
                        Text("Your answers suggest that you do not need to get tested for COVID-19 at this time unless suggested by your healthcare provider.")
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



struct ContinuePhysicalDistancingResultsView_Previews: PreviewProvider {
    static var previews: some View {
        ContinuePhysicalDistancingResultsView(screenerStatus: ScreenerStatus.init())
    }
}
