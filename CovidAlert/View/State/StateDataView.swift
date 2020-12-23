//
//  StateDataView.swift
//  CovidAlert
//
//  Created by Matthew Garlington on 12/9/20.
//

import SwiftUI


struct StateDataView: View {
    
    @ObservedObject var vm = StateDataViewModel()
  
   
    
 
        let state: StateUS
    
//    let stateDetailArray: [StateDetails] = [.init(state: "MD", positive: 200, inIcuCurrently: 200, death: 200, positiveIncrease: 13, deathIncrease: 25)]
//    let state : State
//
   
    var body: some View {
       
        ScrollView {
            
            LazyVStack(alignment: .leading,spacing: 10) {
                ScrollView(.horizontal, showsIndicators: false) {
            
                    HStack {
                        ForEach(0..<50, id: \.self) { statein in
                            NavigationLink(
                                destination: StateDetailView(state: state),
                                label: {
                               
                             
                            ZStack{
                                
                                Spacer()
                                    .frame(width: 75, height: 75)
                                    .background(Color(.init(white: 0.95, alpha: 1)))
                                    .clipShape(Circle())
                                    .cornerRadius(12)
                                    .shadow(radius: 4)
                                    .padding(.bottom)
                                    .padding(.top)
                               
                                   
                                    HStack(alignment: .bottom) {
                                        Text("MD")
                                        .font(.system(size: 16, weight: .semibold))
                                        .padding(.horizontal)
                                       
                                    }
                                
                                    }
                                })
                                }
                            
                            }
                        
                            
                    }.padding(.horizontal)
                HStack(alignment: .lastTextBaseline) {
                    Spacer()
                NavigationLink(
                    destination: StateDataViewII(),
                    label: {
                        Text("See All States")
                            .foregroundColor(.white)
                            .font(.subheadline)
                            .bold()
                            .padding(.horizontal)
                    })
          
                }
                    }
        
        }
        
                
                
            }
        }
    



struct StateDataView_Previews: PreviewProvider {
    
    
    static var previews: some View {
        NavigationView {
            StateDataView(state: .init(state: "MD"))
    }
        HomeView()
    }
}
