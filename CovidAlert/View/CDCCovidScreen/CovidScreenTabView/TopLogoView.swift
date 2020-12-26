//
//  TopLogoView.swift
//  CovidAlert
//
//  Created by Matthew Garlington on 12/24/20.
//

import SwiftUI

struct TopLogoView: View  {
    var body: some View {
        HStack {
            Circle()
                .frame(width: 30)
            
            Rectangle()
                .frame(width:1, height: 30)
            
            Circle()
                .frame(width: 30)
            Spacer()
        }
    }
}


struct TopLogoView_Previews: PreviewProvider {
    static var previews: some View {
        TopLogoView()
    }
}
