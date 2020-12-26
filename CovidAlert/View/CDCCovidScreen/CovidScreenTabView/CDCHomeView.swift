//
//  CDCHomeView.swift
//  CovidAlert
//
//  Created by Matthew Garlington on 12/24/20.
//

import SwiftUI

struct CDCHomeView: View {
    var body: some View {
     
      
            VStack {
            TopInfoView()
            ListView()
            }
        
        
        }
    }


//Mark: - New .swift file.
struct TopInfoView: View {
    var body: some View {
        VStack(alignment: .leading) {
        TopLogoView()
        HeaderView()
        VButtons()
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
    

    
    var body: some View {
        VStack {
           
            Button(action: {
            // do stuff
    
//            CDCScreenerTool()
                
            }) {
                Text("Start Screening")
                    .fontWeight(.bold)
                    .foregroundColor(.white)
                    .frame(width: UIScreen.main.bounds.width - 32, height: 50, alignment: .center)
                    .background(Color.blue)
                    .cornerRadius(12)
                    .padding(.vertical, 8)
                   
            }
        }
    }
}


//Mark: - New .swift file.
struct CDCHomeView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
        CDCHomeView()
        }
        
    }
}
