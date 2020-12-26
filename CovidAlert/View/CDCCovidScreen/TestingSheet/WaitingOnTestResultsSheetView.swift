//
//  WaitingOnTestResultsSheetView.swift
//  CovidAlert
//
//  Created by Matthew Garlington on 12/26/20.
//

import SwiftUI

struct WaitingOnTestResultsSheetView: View {
    var body: some View {
        NavigationView {
            ScrollView {
                VStack(alignment: .leading, spacing: 10) {
                    
                    Image(systemName: "clock.arrow.circlepath")
                        .foregroundColor(.yellow)
                        .font(.system(size: 40))
                    
                    
                    
                    Text("What can I do while waiting for test results?")
                        .bold()
                        .font(.system(size: 35))
                    
                    
                    Text("The turnaround time for testing varies between testing sites.")
                        .frame(height: 100)
                        .font(.system(size: 20))
                    Spacer()
                    
                    Text("What To Know")
                        .bold()
                        .font(.title)
                    
                    Text("While waiting for test results, seek emergency care right away if you develop emergency warning signs, which include: severe, constant chest pain signs, which include: severe, constant chest pain or pressure; extreme difficulty breathing; severe, constant lightheadedness; serious disorientation or unresponsiveness; or blue-tinted face or lips.")
                        .frame(height: 250)
                        .font(.system(size: 20))
                    Text("If your symptoms worsen, call your doctor and tell them your symptoms. They will tell you what to do next.")
                        .frame(height: 100)
                        .font(.system(size: 20))
            
                }.padding(.horizontal)
                
            }.padding(.horizontal)
            
        }
    }
}
struct WaitingOnTestResultsSheetView_Previews: PreviewProvider {
    static var previews: some View {
        WaitingOnTestResultsSheetView()
    }
}
