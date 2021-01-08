//
//  ContentView.swift
//  CovidAlert
//
//  Created by Matthew Garlington on 12/9/20.
//

import SwiftUI

extension Color {
    static let discoverBackground =  Color(.init(white: 1, alpha: 1))

}
struct HomeView: View {
    
 //   @ObservedObject var country = CurrentCountryData()
    
  // @ObservedObject var tweetsvm = TwitterViewModel()
 //  @ObservedObject var newsvm = NewsRapidAPIViewModel()
    
//    @ObservedObject var vm2 = OverDoseDeathViewModel()
    
  //  @ObservedObject var vm = NewYorkTimesViewModel()
 
    
    
   
        let state = StateUS(state: "MD")
    
       

    
  
  
    var body: some View {
      

   
            
                ZStack {
                    
                    LinearGradient(gradient: Gradient(colors: [Color.init(#colorLiteral(red: 0.311514914, green: 0.3016776145, blue: 0.7600132823, alpha: 1)), Color.init(#colorLiteral(red: 0.09712613374, green: 0.102140896, blue: 0.2525157034, alpha: 1))]), startPoint: .top, endPoint: .center)
                        .ignoresSafeArea()
                    
//                        Color.secondary
//                        .offset(y:300)
                   
                
                ScrollView {
                    
                    VStack {
//                        
//                        Image("undraw_medical_research_red")
//                                .resizable()
//                                .scaledToFit()
                 
                      
                  
                 
                    
                    }
                    
                    
                    StateDataView()
                    
                    VStack {
                   
                        
                    
                        AllUSDataView()
                            .padding(.bottom, 50)
                   
                        VStack(spacing: 40) {
                        
                       
                            
                       
//                        SymptomCheckView()
//                        NewsDataView()
                    
                      
                            
                        
                    
            
                    
                        }.padding()
                        
                       
                    }.background(Color.init(#colorLiteral(red: 0.1106571779, green: 0.1057340428, blue: 0.2687981129, alpha: 1)))
                    .cornerRadius(16)
                    .padding(.top, 32)
                    
                }
                
                    
                } .navigationTitle("Coronavirus US")
                 .navigationBarHidden(true)
                
                  
               
            }

            
        
    }





        
        




struct Homeview_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
        HomeView()
        }
    }
}
