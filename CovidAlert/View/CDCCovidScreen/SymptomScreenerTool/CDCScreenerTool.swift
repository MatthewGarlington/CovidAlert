//
//  CDCScreenerTool.swift
//  CovidAlert
//
//  Created by Matthew Garlington on 12/26/20.
//

import SwiftUI

struct CDCScreenerTool: View {
    var body: some View {
        NavigationView {
            ScrollView{
                VStack(spacing: 1){
                    ScreenerHeaderView()
                        .background(
                            LinearGradient(gradient: Gradient(colors: [Color(.systemBackground), Color(.systemGray4)]), startPoint: .top, endPoint: .bottom)
                        )
                        .listRowInsets(EdgeInsets())
                    
                    ScreenerToolBody()
                }
                
                
            }
        }
    }
}

   
struct ScreenerToolBody: View {
        var body: some View {
         
     
           
            VStack(alignment: .leading, spacing: 5) {
      
                VStack(alignment: .leading, spacing: 2) {
                    HStack {
                    Image(systemName: "list.number")
                        .foregroundColor(.blue)
                        .font(.system(size: 25))
                    Text("You'll answer a few questions about symptoms and contact you've had with others")
                        .frame(height: 100)
                }
                    HStack {
                    Image(systemName: "hand.raised.fill")
                        .foregroundColor(.blue)
                        .font(.system(size: 25))
                    Text("Your Answers will not be shared with anyone without your permission")
                        .frame(height: 100)
                }
                    HStack {
                    Image(systemName: "checkmark.circle.fill")
                        .foregroundColor(.blue)
                        .font(.system(size: 25))
                    Text("By using this tool, you agree to its terms and that the company will not be liable for any harm relating to using it")
                        .frame(height: 100)
                }
                VStack {
                    Button(action: {}, label: {
                        ZStack {
                        Spacer()
                            .frame(width: 375, height: 50, alignment: .center)
                            .background(Color.blue)
                            .cornerRadius(10)
                            HStack {
                                Text("Use for Myself")
                                    .foregroundColor(.white)
                            }
                            
                        
                        }.padding()
                    })
                   
                        
                }.padding(.bottom)
                }
            }.padding()
        
        }
}
    
            
     
     
struct ScreenerHeaderView: View {
    var body: some View {
        VStack {
           
            Text("COVID-19 Screening Tool")
                .bold()
                .font(.system(size: 30))
            
            Spacer()
        
            Image("UndrawMedicalLady")
                .scaledToFit()
            
        }
        
    }
}

struct CDCScreenerTool_Previews: PreviewProvider {
    static var previews: some View {
        CDCScreenerTool()
    }
}
