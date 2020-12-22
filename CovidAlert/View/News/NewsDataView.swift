//
//  GraphDataView.swift
//  CovidAlert
//
//  Created by Matthew Garlington on 12/9/20.
//

import SwiftUI
import KingfisherSwiftUI




struct NewsDataView: View {
    
    @ObservedObject var vm = NewsDataViewModel()
 
    

    
    let description = "Upper Manhattan and the southern part of Staten Island face stricter restrictions as officials battle a second wave of the outbreak."
    let title = "Coronavirus in N.Y.: Latest Updates"
    
    let samplePhoto = "https://static01.nyt.com/images/2020/11/24/nyregion/24nytoday-photo/24nytoday-photo-facebookJumbo.jpg"
  
    
    var body: some View {
        
        
        
        VStack {
            Text("Covid News")
                .padding(.horizontal)
                .font(.system(size: 30, weight: .bold))
            
            
            ScrollView(.horizontal, showsIndicators: false) {
                
                HStack(spacing: 40) {
                    ForEach(0..<10, id: \.self) { new in
                        NavigationLink(
                            destination: NewsDetailView(),
                            label: {
                                
                                
                                //         vm.news?.articles ?? []
                                ZStack{
                                    
                                    KFImage(URL(string: samplePhoto))
                                        .frame(width: 300, height: 250)
                                        .cornerRadius(30)
                                        .shadow(radius: 4)
                                        .blur(radius: 5)
                                    LinearGradient(gradient: Gradient(colors: [Color.clear, Color.black]), startPoint: .leading, endPoint: .trailing)
                                        .cornerRadius(30)
                                        .frame(width: 300, height: 300)
                                    
                                    
                                    
                                    
                                    VStack {
                                        HStack(alignment: .firstTextBaseline) {
                                            Text(title)
                                                .frame(width: 300, height: 50, alignment: .topLeading)
                                                .font(.system(size: 20, weight: .bold))
                                                .foregroundColor(.white)
                                                .padding(.horizontal)
                                            
                                            
                                        }.padding(.horizontal)
                                        .padding(.top)
                                        Text(description)
                                            .frame(width: 300, height: 150, alignment: .center)
                                            .font(.system(size: 18, weight: .semibold))
                                            .foregroundColor(.white)
                                            .padding()
                                        
                                    }
                                    
                                }
                                
                            })
                    }
                    
                }
                
                
            }.padding(.horizontal)
            //                GraphView(data: [])
        }
        
        .padding(.top)
        
    }
    
    
    
}
        
    


struct NewsDataView_Previews: PreviewProvider {
    static var previews: some View {
        NewsDataView()
        HomeView()
    }
}
