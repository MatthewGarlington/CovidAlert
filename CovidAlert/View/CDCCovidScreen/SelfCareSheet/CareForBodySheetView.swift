//
//  CareForBodySheetView.swift
//  CovidAlert
//
//  Created by Matthew Garlington on 12/26/20.
//

import SwiftUI

struct CareForBodySheetView: View {
    var body: some View {
        NavigationView {
            ScrollView {
                VStack(alignment: .leading, spacing: 10) {
                    
                    Image(systemName: "flame.fill")
                        .foregroundColor(.red)
                        .font(.system(size: 40))
                    
                    
                    
                    Text("Care For Your Body")
                        .bold()
                        .font(.system(size: 35))
                    
                    
                    Text("Eat well-balanced meals. This means lots of fruits, vegetables, whole grains, and protein. Try to limit the amount of sugar and salt.")
                        .frame(height: 100)
                        .font(.system(size: 20))
                    
                    Text("Stay hydrated. Drink Water with every meal, in between each meal, and when you work out.")
                        .frame(height: 100)
                        .font(.system(size: 20))
                    Text("Excercise for at least 30 minutes a day. Walking counts. Many gyms and fitness companies are offering free online classes with no equipment necessary.")
                        .frame(height: 150)
                        .font(.system(size: 20))
                    Text("Make sure to sleep. Try to get seven to nine hours if possible.")
                        .frame(height: 100)
                        .font(.system(size: 20))
                    Text("Don't drink too much caffeine. It can lead to anxiety, insomnia, nausea, and headaches.")
                        .frame(height: 100)
                        .font(.system(size: 20))
                    Text("You might need to see your doctor for a reason other than COVID-19. Call, video chat, or email your provider first.")
                        .frame(height: 100)
                        .font(.system(size: 20))
            
                }.padding(.horizontal)
                
            }.padding(.horizontal)
            
        }
    }
}
struct CareForBodySheetView_Previews: PreviewProvider {
    static var previews: some View {
        CareForBodySheetView()
    }
}
