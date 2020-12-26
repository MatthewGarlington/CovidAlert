//
//  ShopWisleySheetView.swift
//  CovidAlert
//
//  Created by Matthew Garlington on 12/26/20.
//

import SwiftUI

struct ShopWisleySheetView: View {
    var body: some View {
        NavigationView {
            ScrollView {
                VStack(alignment: .leading, spacing: 10) {
                    
                    Image(systemName: "cart.fill")
                        .foregroundColor(.green)
                        .font(.system(size: 40))
                    
                    
                    
                    Text("Shop Wisely")
                        .bold()
                        .font(.system(size: 35))
                    
                    
                    Text("Limit your trips to the grocery store or pharmacy as much as possible. When you go, try to only buy what you need to be sure there's enough for everyone else.")
                        .frame(height: 150)
                        .font(.system(size: 20))
                    
                    Text("People who are at higher risk of severe illness, such as those aged 65 or older or individuals with an underlying medical condition, should try to get food and medications delivered. If delivery is not possible, ask a lower risk family member or friend to run errands for you. Or check local stores to see if they have special shopping hours for high risk customers.")
                        .frame(height: 250)
                        .font(.system(size: 20))
                    Text("Wear a cloth mask. Wipe down your cart or basket before using it. Don't touch your face while shopping.")
                        .frame(height: 100)
                        .font(.system(size: 20))
                    Text("You want to be well prepared, but leave enough for others. A good rule of thumb is to get two weeks worth of groceries and supplies. Buy long-lasting foods, like dry, canned, or frozen foods. You can still purchase fresh produce, meat, and dairy. Just eat those items first or freeze them so they don't spoil.")
                        .frame(height: 200)
                        .font(.system(size: 20))
                    Text("Gather essential over-the-counter supplies like tissues, a fever reducer, and cough medicine. Buy a two-week supply of housegold items like soap, toiletries, and laundry detergent.")
                        .frame(height: 150)
                        .font(.system(size: 20))
                    Text("Practice physical distancing rules while shopping or getting deliveries.")
                        .frame(height: 100)
                        .font(.system(size: 20))
            
                }.padding(.horizontal)
                
            }.padding(.horizontal)
            
        }
    }
}

struct ShopWisleySheetView_Previews: PreviewProvider {
    static var previews: some View {
        ShopWisleySheetView()
    }
}
