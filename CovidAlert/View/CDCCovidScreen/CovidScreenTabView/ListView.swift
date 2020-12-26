//
//  ListView.swift
//  CovidAlert
//
//  Created by Matthew Garlington on 12/24/20.
//

import SwiftUI

struct ListView: View {
    
    let aboutInfoCell = [
        
        MainCellData(aboutCellData: [AboutCellData(image: "staroflife.fill", color: .orange, title: "About COVID-19", previewBody: "Lots of Preview Text and Stuff", body: "Lots more of Body Text about Covid")]
                     
        , image:  "staroflife.fill", color: .orange, title: "About COVID-19", body: "An up-to-date rundown of the virus and its symptoms"),
     ]
    
    let whatInfoCell = [
        MainCellData(aboutCellData: [AboutCellData(image: "list.bullet.indent", color: .green, title: "What Can You Do?", previewBody: "Lots of Preview Text and Stuff", body: "Lots more of Body Text about Covid")]
                     
        , image:  "list.bullet.indent", color: .green, title: "What Can You Do?", body: "Information about hand-washing, physical distancing, isolating from others, and more."),
      ]
    
    let testingInfoCell = [
        MainCellData(aboutCellData: [AboutCellData(image: "doc.on.doc.fill", color: .purple, title: "Covid-19 Testing?", previewBody: "Lots of Preview Text and Stuff", body: "Lots more of Body Text about Covid")]
                     
        , image:  "doc.on.doc.fill", color: .purple, title: "Covid-19 Testing?", body: "Current guidance on who should be tested and what to expect from the test results."),
        
        ]
    
    let selfCareInfoCell = [
        
         MainCellData(aboutCellData: [AboutCellData(image: "suit.heart.fill", color: .pink, title: "Supporting Yourself", previewBody: "Lots of Preview Text and Stuff", body: "Lots more of Body Text about Covid")]
                      
         , image:  "suit.heart.fill", color: .pink, title: "Supporting Yourself", body: "Tips for keeping yourself physically and mentally healthy."),
    ]
    var body: some View {
   
            List {
                
                ForEach(aboutInfoCell, id: \.self) { cell in
                    NavigationLink(
                        destination: AboutCovidDetailView(),
                        label: {
                            
                            HStack {
                                ZStack {
                                Circle()
                                    .foregroundColor(cell.color)
                                    .frame(width: 34)
                            
                                    Image(systemName: cell.image)
                                    .foregroundColor(.white)
                                
                                }
                                VStack(alignment: .leading) {
                                    Text(cell.title)
                                        .fontWeight(.bold)
                                    Text(cell.body)
                                    
                                }
                            }
                        })
                    
                }
                
                ForEach(whatInfoCell, id: \.self) { cell in
                    NavigationLink(
                        destination: WhatInfoDetailView(),
                        label: {
                            
                            HStack {
                                ZStack {
                                Circle()
                                    .foregroundColor(cell.color)
                                    .frame(width: 34)
                            
                                    Image(systemName: cell.image)
                                    .foregroundColor(.white)
                                
                                }
                                VStack(alignment: .leading) {
                                    Text(cell.title)
                                        .fontWeight(.bold)
                                    Text(cell.body)
                                    
                                }
                            }
                        })
                    
                }
                ForEach(testingInfoCell, id: \.self) { cell in
                    NavigationLink(
                        destination: CovidTestingView(),
                        label: {
                            
                            HStack {
                                ZStack {
                                Circle()
                                    .foregroundColor(cell.color)
                                    .frame(width: 34)
                            
                                    Image(systemName: cell.image)
                                    .foregroundColor(.white)
                                
                                }
                                VStack(alignment: .leading) {
                                    Text(cell.title)
                                        .fontWeight(.bold)
                                    Text(cell.body)
                                    
                                }
                            }
                        })
                    
                }
                ForEach(selfCareInfoCell, id: \.self) { cell in
                    NavigationLink(
                        destination: SelfCareDetailView(),
                        label: {
                            
                            HStack {
                                ZStack {
                                Circle()
                                    .foregroundColor(cell.color)
                                    .frame(width: 34)
                            
                                    Image(systemName: cell.image)
                                    .foregroundColor(.white)
                                
                                }
                                VStack(alignment: .leading) {
                                    Text(cell.title)
                                        .fontWeight(.bold)
                                    Text(cell.body)
                                    
                                }
                            }
                        })
                    
                }
                
            }
            
            .navigationBarTitle("")
            .navigationBarHidden(true)
        
    }
}



struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView{
        ListView()
        }
    }
}


struct MainCellData: Hashable {
    let aboutCellData: [AboutCellData]
    let image: String
    let color: Color
    let title: String
    let body: String
}
struct AboutCellData: Hashable {
    let image: String
    let color: Color
    let title: String
    let previewBody: String
    let body: String
}
