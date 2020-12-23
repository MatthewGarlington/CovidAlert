//
//  SymptomCheckDetailView.swift
//  CovidAlert
//
//  Created by Matthew Garlington on 12/21/20.
//

import SwiftUI

struct SymptomCheckDetailView: View {
    
    @State var isMarked:Bool = false
    @State var isMarked1:Bool = false
    @State var isMarked2:Bool = false
    @State var isMarked3:Bool = false
    @State var isMarked4:Bool = false
    @State var isMarked5:Bool = false
    @State var isMarked6:Bool = false
    @State var isMarked7:Bool = false
    @State var isMarked8:Bool = false
    @State var isMarked9:Bool = false
    @State var isMarkedBar:Bool = false
    
    
    var body: some View {
        
        ScrollView {
            VStack(spacing: 30) {
                
                Text("What Symptoms do you Currently have? (Check all that Apply) :")
                    .bold()
                    .font(.title2)
                
                
                ZStack(alignment: .leading) {
                    Spacer()
                        .frame(width: 375, height: 100)
                        .background(Color(.init(white: 0.95, alpha: 1)))
                        .cornerRadius(30)
                        .shadow(radius: 10)
                    HStack {
                        Text("Fever or chills")
                            .foregroundColor(.black)
                            .font(.headline)
                            .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                            .padding(.horizontal)
                        Spacer()
                        Button(action:{
                            self.isMarked.toggle()
                            
                        }) {
                            Image(systemName: self.isMarked ? "checkmark.circle.fill" : "checkmark.circle")
                                .renderingMode(.original)
                                .font(.title)
                            
                            
                            
                        }.padding()
                    }
                }
                ZStack(alignment: .leading) {
                    Spacer()
                        .frame(width: 375, height: 100)
                        .background(Color(.init(white: 0.95, alpha: 1)))
                        .cornerRadius(30)
                        .shadow(radius: 10)
                    HStack {
                        Text("Cough")
                            .foregroundColor(.black)
                            .font(.headline)
                            .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                            .padding(.horizontal)
                        Spacer()
                        Button(action:{
                            self.isMarked1.toggle()
                            
                        }) {
                            Image(systemName: self.isMarked1 ? "checkmark.circle.fill" : "checkmark.circle")
                                .renderingMode(.original)
                                .font(.title)
                            
                            
                            
                        }.padding()
                    }
                }
                ZStack(alignment: .leading) {
                    Spacer()
                        .frame(width: 375, height: 100)
                        .background(Color(.init(white: 0.95, alpha: 1)))
                        .cornerRadius(30)
                        .shadow(radius: 10)
                    HStack {
                        Text("Shortness of breath or difficulty breathing")
                            .foregroundColor(.black)
                            .font(.headline)
                            .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                            .padding(.horizontal)
                        Spacer()
                        Button(action:{
                            self.isMarked2.toggle()
                            
                        }) {
                            Image(systemName: self.isMarked2 ? "checkmark.circle.fill" : "checkmark.circle")
                                .renderingMode(.original)
                                .font(.title)
                            
                            
                            
                        }.padding()
                    }
                }
                ZStack(alignment: .leading) {
                    Spacer()
                        .frame(width: 375, height: 100)
                        .background(Color(.init(white: 0.95, alpha: 1)))
                        .cornerRadius(30)
                        .shadow(radius: 10)
                    HStack {
                        Text("Fatigue")
                            .foregroundColor(.black)
                            .font(.headline)
                            .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                            .padding(.horizontal)
                        
                        Spacer()
                        Button(action:{
                            self.isMarked3.toggle()
                            
                        }) {
                            Image(systemName: self.isMarked3 ? "checkmark.circle.fill" : "checkmark.circle")
                                .renderingMode(.original)
                                .font(.title)
                            
                            
                            
                        }.padding()
                    }
                }
                ZStack(alignment: .leading) {
                    Spacer()
                        .frame(width: 375, height: 100)
                        .background(Color(.init(white: 0.95, alpha: 1)))
                        .cornerRadius(30)
                        .shadow(radius: 10)
                    HStack {
                        Text("Muscle or body aches")
                            .foregroundColor(.black)
                            .font(.headline)
                            .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                            .padding(.horizontal)
                        
                        Spacer()
                        Button(action:{
                            self.isMarked4.toggle()
                            
                        }) {
                            Image(systemName: self.isMarked4 ? "checkmark.circle.fill" : "checkmark.circle")
                                .renderingMode(.original)
                                .font(.title)
                            
                            
                            
                        }.padding()
                    }
                }
                ZStack(alignment: .leading) {
                    Spacer()
                        .frame(width: 375, height: 100)
                        .background(Color(.init(white: 0.95, alpha: 1)))
                        .cornerRadius(30)
                        .shadow(radius: 10)
                    HStack {
                        Text("Headache")
                            .foregroundColor(.black)
                            .font(.headline)
                            .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                            .padding(.horizontal)
                        Spacer()
                        Button(action:{
                            self.isMarked5.toggle()
                            
                        }) {
                            Image(systemName: self.isMarked5 ? "checkmark.circle.fill" : "checkmark.circle")
                                .renderingMode(.original)
                                .font(.title)
                            
                            
                            
                        }.padding()
                    }
                }
                ZStack(alignment: .leading) {
                    Spacer()
                        .frame(width: 375, height: 100)
                        .background(Color(.init(white: 0.95, alpha: 1)))
                        .cornerRadius(30)
                        .shadow(radius: 10)
                    HStack {
                        Text("New loss of Taste or Smell")
                            .foregroundColor(.black)
                            .font(.headline)
                            .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                            .padding(.horizontal)
                        Spacer()
                        Button(action:{
                            self.isMarked6.toggle()
                            
                        }) {
                            Image(systemName: self.isMarked6 ? "checkmark.circle.fill" : "checkmark.circle")
                                .renderingMode(.original)
                                .font(.title)
                            
                            
                            
                        }.padding()
                    }
                }
                ZStack(alignment: .leading) {
                    Spacer()
                        .frame(width: 375, height: 100)
                        .background(Color(.init(white: 0.95, alpha: 1)))
                        .cornerRadius(30)
                        .shadow(radius: 10)
                    HStack {
                        Text("Sore Throat")
                            .foregroundColor(.black)
                            .font(.headline)
                            .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                            .padding(.horizontal)
                        Spacer()
                        Button(action:{
                            self.isMarked7.toggle()
                            
                        }) {
                            Image(systemName: self.isMarked7 ? "checkmark.circle.fill" : "checkmark.circle")
                                .renderingMode(.original)
                                .font(.title)
                            
                            
                            
                        }.padding()
                    }
                }
                ZStack(alignment: .leading) {
                    Spacer()
                        .frame(width: 375, height: 100)
                        .background(Color(.init(white: 0.95, alpha: 1)))
                        .cornerRadius(30)
                        .shadow(radius: 10)
                    HStack {
                        Text("Nausea or Vomiting")
                            .foregroundColor(.black)
                            .font(.headline)
                            .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                            .padding(.horizontal)
                        Spacer()
                        Button(action:{
                            self.isMarked8.toggle()
                            
                        }) {
                            Image(systemName: self.isMarked8 ? "checkmark.circle.fill" : "checkmark.circle")
                                .renderingMode(.original)
                                .font(.title)
                            
                            
                            
                        }.padding()
                    }
                }
                
                
                
                
            }.padding(.horizontal)
            
            VStack {
                
                NavigationLink(
                    destination: QuestionarreLineOfWorkView(),
                    label: {
                        ZStack{
                            Spacer()
                                .frame(width: 400, height: 75)
                                .background(Color.blue)
                                .cornerRadius(30)
                                .shadow(radius: 10)
                            
                        Text("Next")
                            .foregroundColor(.white)
                            .bold()
                            .font(.title2)
                        }
                        
                    })
            }.padding(.top, 75)
        }
    }
}

struct SymptomCheckDetailView_Previews: PreviewProvider {
    static var previews: some View {
        SymptomCheckDetailView()
        
    }
}
