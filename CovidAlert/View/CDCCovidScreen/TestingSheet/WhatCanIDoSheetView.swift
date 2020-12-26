//
//  WhatCanIDoSheetView.swift
//  CovidAlert
//
//  Created by Matthew Garlington on 12/26/20.
//

import SwiftUI

struct WhatCanIDoSheetView: View {
    var body: some View {
        NavigationView {
            ScrollView {
                VStack(alignment: .leading, spacing: 10) {
                    
                    Image(systemName: "doc.text.below.ecg.fill")
                        .foregroundColor(.green)
                        .font(.system(size: 40))
                    
                    
                    
                    Text("What can I expect from test results?")
                        .bold()
                        .font(.system(size: 35))
                    
                    
                    Text("Testing can identify if you have the virus that causes COVID-19.")
                        .frame(height: 100)
                        .font(.system(size: 20))
                    Spacer()
                    
                    Text("What To Know")
                        .bold()
                        .font(.title)
                    
                    Text("No treatment is specifically approved for COVID-19. But test results can help you and your doctor decide what to do next.")
                        .frame(height: 100)
                        .font(.system(size: 20))
                    Text("If you test positive and have mild symptoms, your doctor may advise you to care for yourself at home.")
                        .frame(height: 100)
                        .font(.system(size: 20))
                    Text("If you test positive and have severe symptoms, your doctor will tell you what to do.")
                        .frame(height: 100)
                        .font(.system(size: 20))
                    Text("A negative test means you were probably not infected at the time of testing. However, it is possible that you were tested early into your infection and that you could test positive later. You could also be exposed at any time and develop the illness.")
                        .frame(height: 200)
                        .font(.system(size: 20))
                }.padding(.horizontal)
                
            }.padding(.horizontal)
            
        }
    }
}
    
struct WhatCanIDoSheetView_Previews: PreviewProvider {
    static var previews: some View {
        WhatCanIDoSheetView()
    }
}
