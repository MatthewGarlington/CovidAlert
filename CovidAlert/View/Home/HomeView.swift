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
    
    @ObservedObject var country = CurrentCountryData()
    
    @ObservedObject var tweetsvm = TwitterViewModel()
    
    @ObservedObject var vm2 = OverDoseDeathViewModel()
    
//    @ObservedObject var vm: StateDetailViewModel
    
  // let state: StateUS
  
//
//    init(state: StateUS) {
//
//
//
//
//        UINavigationBar.appearance().largeTitleTextAttributes = [
//            .foregroundColor: UIColor.black
//         ]
//
//        self.state = state
//        self.vm = .init(stateID: state.state)
//
//    }
    
   
        let state = StateUS(state: "MD")

    
  
  
    var body: some View {
      

            NavigationView {
                
                ZStack{
                    
                    LinearGradient(gradient: Gradient(colors: [Color.white, Color.blue]), startPoint: .top, endPoint: .center)
                        .ignoresSafeArea()
                    
                        Color.discoverBackground
                        .offset(y:400)
                
                ScrollView {
                  
                    HStack {
                        Image(systemName: "magnifyingglass")
                        Text("Where do you want to go?")
                        Spacer()
                  
                    } .font(.system(size: 14, weight: .semibold))
                      .foregroundColor(.white)
                      .padding()
                      .background(Color(.init(white: 1, alpha: 0.3)))
                     .cornerRadius(12)
                      .padding(16)
                 
                    StateDataView(state: state )
                    
                    VStack {
                   
                        
                    
                        AllUSDataView()
                   
                   
                        VStack(spacing: 40) {
                        
                       
                            
                       
                    
                        NewsDataView()
                    
                        SymptomCheckView()
                            
                        
                    
            
                    
                        }.padding()
                        
                       
                    }.background(Color.discoverBackground)
                    .cornerRadius(16)
                    .padding(.top, 32)
                    
                }
                
                    
                } .navigationTitle("Coronavirus US")
                
               
          

            }
        }
    }





        
        




struct Homeview_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
