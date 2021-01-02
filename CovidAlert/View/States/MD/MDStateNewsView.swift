//
//  MDStateNewsView.swift
//  CovidAlert
//
//  Created by Matthew Garlington on 12/27/20.
//

import SwiftUI
import KingfisherSwiftUI

struct MDStateNewsView: View {

        
         @ObservedObject var vm = StateNewsDataViewModel()
            
         @ObservedObject var vm2 = MDDetailViewModel()
       
       
        
     let testNewsArray = News(articles: [Articles(author: "Tim Apple", title: "Coronavirus in N.Y.: Latest Updates", description: "Upper Manhattan and the southern part of Staten Island face stricter restrictions as officials battle a second wave of the outbreak.", url: "www.facebook.com", urlToImage: "https://static01.nyt.com/images/2020/11/24/nyregion/24nytoday-photo/24nytoday-photo-facebookJumbo.jpg", content: "")])
         
         

         
         

                
       
         var body: some View {
            
             VStack {
         
                 Text("\(vm2.allStateDetails?.state ?? "State") News")
                 .fontWeight(.bold)
                 .font(.title)
                 .foregroundColor(.black)

             ScrollView(.horizontal, showsIndicators: false) {
               
                 
                 HStack {
                     ForEach(vm.news?.articles ?? testNewsArray.articles, id: \.self) { new in
                         VStack {
                             ZStack {
                                 Spacer()
                                     .frame(width: 390, height: 480)
                                     .background(Color(.init(white: 0.85, alpha: 1)))
                                     .cornerRadius(12)
                                     .shadow(radius: 4)
                                     .padding(.all)
                                 
                                 VStack(spacing: 20) {
                                     
                                     KFImage(URL(string: new.urlToImage))
                                         .resizable()
                                         .frame(width: 390, height: 230)
                                     
                                     
                                     Text(new.title)
                                         .fontWeight(.bold)
                                         .font(.system(size: 20))
                                         .padding(.horizontal)
                                     
                                     
                                     Text(new.description)
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

 

struct MDStateNewsView_Previews: PreviewProvider {
    static var previews: some View {
        MDStateNewsView()
    }
}
