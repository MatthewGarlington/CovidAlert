//
//  CDCHomeView.swift
//  CovidAlert
//
//  Created by Matthew Garlington on 12/24/20.
//

import SwiftUI

struct CDCHomeView: View {
    @ObservedObject var screenerStatus: ScreenerStatus
    var body: some View {
     
      
            VStack {
            TopInfoView(screenerStatus: screenerStatus)
            ListView()
            }
        
        
        }
    }


//Mark: - New .swift file.
struct TopInfoView: View {
    @ObservedObject var screenerStatus: ScreenerStatus
    var body: some View {
        VStack(alignment: .leading) {
        TopLogoView()
        HeaderView()
        VButtons(screenerStatus: screenerStatus)
        }
        .padding()
        .background(
            LinearGradient(gradient: Gradient(colors: [Color(.systemBackground), Color(.systemGray4)]), startPoint: .top, endPoint: .bottom)
        )
        .listRowInsets(EdgeInsets())
    }
}

//Mark: - New .swift file.
struct HeaderView: View {
    var body: some View {
        VStack(alignment: .leading) {
        Text("COVID-19")
            .font(.title)
            .bold()
        Text("Screening Tool")
            .font(.title)
            .bold()
            TextAndImageInfoView()
            
        }
    }
}

//Mark: - New .swift file.
struct TextInfoView: View {
    var body: some View {
        VStack(alignment: .leading) {
        Text("This tool can help you understand what to do next about Covid-19")
            .padding(.bottom)
            
        Text("Let's all look out for each other by wearing a mask, avoiding crowds, and by knowing our status")
        }
        .frame(height: 200)
        .frame(width: 225)
        .padding()
    }
    
}

//Mark: - New .swift file.
struct TextAndImageInfoView: View {
    var body: some View {
        
        HStack {
            TextInfoView()
     
    Spacer()
        
        Image("CovidWomenFlip")
                .padding(.top)
                .padding(.horizontal)
                .scaleEffect(3)
                .padding(.horizontal)
     
       
        }
    }
}

//Mark: - New .swift file.
struct VButtons: View {
    
    @State private var showNextPage: Bool = false
    @ObservedObject var screenerStatus: ScreenerStatus
    @State private var didTap: Bool = true
    var body: some View {
        VStack {
           
            // These are the two views that will be the destination depending on which box is checked
            NavigationLink(
                destination: CDCScreenerTool(), isActive: $showNextPage,
                
                label: { Text("") }
                
            )
            Button(action: {
                
                if self.showNextPage == false {
                    self.showNextPage = true
                }
                else {
                    
                }
       
             

            }, label: {
                
                
                
                ZStack {
                    Spacer()
                        .frame(width: 375, height: 50, alignment: .center)
                        .background(didTap ? Color.blue : Color.gray)
                        .cornerRadius(10)
                    HStack {
                        Text("Screener Tool")
                            .foregroundColor(.white)
                    }
                    
                    
                }
            })
        }
    }
}


//Mark: - New .swift file.
struct CDCHomeView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            CDCHomeView(screenerStatus: ScreenerStatus.init())
        }
        
    }
}
