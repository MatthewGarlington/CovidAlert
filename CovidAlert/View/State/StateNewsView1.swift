//
//  MapView.swift
//  CovidAlert
//
//  Created by Matthew Garlington on 12/13/20.
//

import SwiftUI
import KingfisherSwiftUI


struct StateNewsView: View {
    
    let description = "Upper Manhattan and the southern part of Staten Island face stricter restrictions as officials battle a second wave of the outbreak."
    let title = "Coronavirus in N.Y.: Latest Updates"
    
    let samplePhoto = "https://static01.nyt.com/images/2020/11/24/nyregion/24nytoday-photo/24nytoday-photo-facebookJumbo.jpg"
           
    var body: some View {
    
        VStack {
        Text("Maryland News")
            .fontWeight(.bold)
            .font(.title)
            .foregroundColor(.black)

        ScrollView(.horizontal, showsIndicators: false) {
          
            
            HStack {
                ForEach(0..<5, id: \.self) { num in
                    VStack {
                        ZStack {
                            Spacer()
                                .frame(width: 390, height: 480)
                                .background(Color(.init(white: 0.85, alpha: 1)))
                                .cornerRadius(12)
                                .shadow(radius: 4)
                                .padding(.all)
                            
                            VStack(spacing: 20) {
                                
                                KFImage(URL(string: samplePhoto))
                                    .resizable()
                                    .frame(width: 390, height: 230)
                                
                                
                                Text(title)
                                    .fontWeight(.bold)
                                    .font(.system(size: 20))
                                    .padding(.horizontal)
                                
                                
                                Text(description)
                                    .frame(width: 300, height: 200)
                            }.padding(.horizontal)
                        }
                    }
                    }
                }
                
            }
        }
    }
}


struct StateNewsViewPreviews: PreviewProvider {
    static var previews: some View {
        StateNewsView()
    }
}
