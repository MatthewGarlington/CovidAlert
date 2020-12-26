//
//  MentalHealthSheetView.swift
//  CovidAlert
//
//  Created by Matthew Garlington on 12/26/20.
//

import SwiftUI

struct MentalHealthSheetView: View {
    var body: some View {
        NavigationView {
            ScrollView {
                VStack(alignment: .leading, spacing: 20) {
                    
                    Image(systemName: "face.smiling.fill")
                        .foregroundColor(.yellow)
                        .font(.system(size: 40))
                    
                    
                    
                    Text("Look After Your Mental Health")
                        .bold()
                        .font(.system(size: 35))
                }.padding(.horizontal)
                    
                Spacer()
                    VStack {
                    Text("Practice mindfulness, which can help you stay calm. Various meditation apps are offering free services and specific COVID-19 programming.")
                        .frame(height: 150)
                        .font(.system(size: 20))
                    
                    Text("It's important to unplug. Take short timeouts during the day to recharge. Schedule longer breaks for fun or relaxing activities.")
                        .frame(height: 100)
                        .font(.system(size: 20))
                    Text("Stimulaten your brain. Read a book, do a puzzle, or paint a picture. Or use this time to start something you've always wanted to do.")
                        .frame(height: 100)
                        .font(.system(size: 20))
                    Text("Exercise, stretch, or take walks outside while practicing physical distancing. Movement can raise your level of endorphins, the chemicalss that promote a positive mindset.")
                        .frame(height: 150)
                        .font(.system(size: 20))
                    Text("Reach out to your family, friends, and others in your community with a text, phone call, or video chat.")
                        .frame(height: 100)
                        .font(.system(size: 20))
                    Text("Start a gratitude journal. Take time to acknowledge the little things that make you happy.")
                        .frame(height: 150)
                        .font(.system(size: 20))
                    Text("Take breaks from the news and social media. Hearing about the pandemic repeatedly can be upsetting.")
                        .frame(height: 150)
                        .font(.system(size: 20))
                    Text("Seek help if things get overwhelming, such as if you're drinking more than usual or using drugs, excessivley worrying, or compulsivley checking your temperature or washing your hands.")
                        .frame(height: 150)
                        .font(.system(size: 20))
                    }.padding(.horizontal)
                    
                    
                  
                    Spacer()
                VStack(alignment: .leading, spacing: 10) {
                    ZStack {
                        Spacer()
                            .frame(width: 400, height: 50)
                            .background(Color(.init(white: 0.85, alpha: 1)))
                            .cornerRadius(10)
                  
                        HStack {
                            
                            Link("How To Make A Mask", destination: URL(string: "https://www.cdc.gov/coronavirus/2019-ncov/daily-life-coping/managing-stress-anxiety.html")!)
                            
                            Spacer()
                            Image(systemName: "globe")
                                .font(.system(size: 20))
                        }.padding()
                       
                    }
                }.padding(.horizontal)
                
            }.padding(.horizontal)
            
        }
    }
}

struct MentalHealthSheetView_Previews: PreviewProvider {
    static var previews: some View {
        MentalHealthSheetView()
    }
}
