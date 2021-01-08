//
//  StateDataView.swift
//  CovidAlert
//
//  Created by Matthew Garlington on 12/9/20.
//

import SwiftUI



struct SimpleRoundButtonStyle: ButtonStyle {
    func makeBody(configuration: Self.Configuration) -> some View {
        configuration.label
            .padding(10)
            .background(
                Group {
                    if configuration.isPressed {
                        Circle()
                            .fill(Color.init(#colorLiteral(red: 0.3028137088, green: 0.2979239523, blue: 0.7478307486, alpha: 1)))
                    } else {
                        Circle()
                            .fill(Color.init(#colorLiteral(red: 0.3028137088, green: 0.2979239523, blue: 0.7478307486, alpha: 1)))
                            .shadow(color: Color.black.opacity(0.2), radius: 10, x: 10, y: 10)
                            .shadow(color: Color.black.opacity(0.7), radius: 10, x: -5, y: -5)
                    }
                }
            )
    }
}


struct StateDataView: View {
    
    @ObservedObject var vm = StateDataViewModel()

  
    
   
    var body: some View {
        
        
       
        VStack {
            HStack(alignment: .top) {
            
                
                Button(action: {
                
                    
                    
                    
                }, label: {
                
                ZStack {
                    
                    Image("head-side-virus-solid")
                        .resizable()
                        .frame(width: 50, height: 50)
                    
                }
                .frame(width: 100, height: 100)
                    
                }).buttonStyle(SimpleRoundButtonStyle())
     
                
            Image("undrawMedicalLadyBlack")
                .resizable()
                .frame(width: 150, height: 150)
                .offset(x: 10.0, y: 10.0)
                
                Button(action: {
                
                    
                    
                    
                }, label: {
                
                ZStack {
                    Image("viruses-solid")
                        .resizable()
                        .frame(width: 50, height: 50)
                 
                    
                }
                .frame(width: 100, height: 100)
                    
                }).buttonStyle(SimpleRoundButtonStyle())
            
            }
            HStack {
                Image(systemName: "magnifyingglass")
                Text("Which State Data Would you like?")
                Spacer()
          
            } .font(.system(size: 14, weight: .semibold))
              .foregroundColor(.white)
              .padding()
              .background(Color(.init(white: 1, alpha: 0.3)))
             .cornerRadius(12)
            
          
          
            
            LazyVStack(alignment: .leading,spacing: 10) {
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack {
                    HStack {
                        
                            NavigationLink(
                                destination: ALDetailView(),
                                label: {
                               
                             
                            ZStack{
                                
                                Spacer()
                                    .frame(width: 75, height: 75)
                                    .background(Color(.init(white: 1, alpha: 0.3)))
                                    .clipShape(Circle())
                                    .cornerRadius(12)
                                    .shadow(radius: 1)
                                    .padding(.bottom)
                                    .padding(.top)
                               
                                   
                                    HStack(alignment: .bottom) {
                                        Text("AL")
                                            .font(.system(size: 20, weight: .bold))
                                            .padding(.horizontal)
                                       
                                    }
                                
                                    }
                                })
                        NavigationLink(
                            destination: AKDetailView(),
                            label: {
                           
                         
                        ZStack{
                            
                            Spacer()
                                .frame(width: 75, height: 75)
                                .background(Color(.init(white: 1, alpha: 0.3)))
                                .clipShape(Circle())
                                .cornerRadius(12)
                                .shadow(radius: 1)
                                .padding(.bottom)
                                .padding(.top)
                           
                               
                                HStack(alignment: .bottom) {
                                    Text("AK")
                                    .font(.system(size: 20, weight: .bold))
                                    .padding(.horizontal)
                                   
                                }
                            
                                }
                            })
                        NavigationLink(
                            destination: AZDetailView(),
                            label: {
                           
                         
                        ZStack{
                            
                            Spacer()
                                .frame(width: 75, height: 75)
                                .background(Color(.init(white: 1, alpha: 0.3)))
                                .clipShape(Circle())
                                .cornerRadius(12)
                                .shadow(radius: 1)
                                .padding(.bottom)
                                .padding(.top)
                           
                               
                                HStack(alignment: .bottom) {
                                    Text("AZ")
                                    .font(.system(size: 20, weight: .bold))
                                    .padding(.horizontal)
                                   
                                }
                            
                                }
                            })
                        NavigationLink(
                            destination: ARDetailView(),
                            label: {
                           
                         
                        ZStack{
                            
                            Spacer()
                                .frame(width: 75, height: 75)
                                .background(Color(.init(white: 1, alpha: 0.3)))
                                .clipShape(Circle())
                                .cornerRadius(12)
                                .shadow(radius: 1)
                                .padding(.bottom)
                                .padding(.top)
                           
                               
                                HStack(alignment: .bottom) {
                                    Text("AR")
                                    .font(.system(size: 20, weight: .bold))
                                    .padding(.horizontal)
                                   
                                }
                            
                                }
                            })
                        NavigationLink(
                            destination: CADetailView(),
                            label: {
                           
                         
                        ZStack{
                            
                            Spacer()
                                .frame(width: 75, height: 75)
                                .background(Color(.init(white: 1, alpha: 0.3)))
                                .clipShape(Circle())
                                .cornerRadius(12)
                                .shadow(radius: 1)
                                .padding(.bottom)
                                .padding(.top)
                           
                               
                                HStack(alignment: .bottom) {
                                    Text("CA")
                                    .font(.system(size: 20, weight: .bold))
                                    .padding(.horizontal)
                                   
                                }
                            
                                }
                            })
                        
                        NavigationLink(
                            destination: CODetailView(),
                            label: {
                           
                         
                        ZStack{
                            
                            Spacer()
                                .frame(width: 75, height: 75)
                                .background(Color(.init(white: 1, alpha: 0.3)))
                                .clipShape(Circle())
                                .cornerRadius(12)
                                .shadow(radius: 1)
                                .padding(.bottom)
                                .padding(.top)
                           
                               
                                HStack(alignment: .bottom) {
                                    Text("CO")
                                    .font(.system(size: 20, weight: .bold))
                                    .padding(.horizontal)
                                   
                                }
                            
                                }
                            })
                        NavigationLink(
                            destination: CTDetailView(),
                            label: {
                           
                         
                        ZStack{
                            
                            Spacer()
                                .frame(width: 75, height: 75)
                                .background(Color(.init(white: 1, alpha: 0.3)))
                                .clipShape(Circle())
                                .cornerRadius(12)
                                .shadow(radius: 1)
                                .padding(.bottom)
                                .padding(.top)
                           
                               
                                HStack(alignment: .bottom) {
                                    Text("CT")
                                    .font(.system(size: 20, weight: .bold))
                                    .padding(.horizontal)
                                   
                                }
                            
                                }
                            })
                        NavigationLink(
                            destination: DEDetailView(),
                            label: {
                           
                         
                        ZStack{
                            
                            Spacer()
                                .frame(width: 75, height: 75)
                                .background(Color(.init(white: 1, alpha: 0.3)))
                                .clipShape(Circle())
                                .cornerRadius(12)
                                .shadow(radius: 1)
                                .padding(.bottom)
                                .padding(.top)
                           
                               
                                HStack(alignment: .bottom) {
                                    Text("DE")
                                    .font(.system(size: 20, weight: .bold))
                                    .padding(.horizontal)
                                   
                                }
                            
                                }
                            })
                    }
                    HStack {
                        NavigationLink(
                            destination: DCDetailView(),
                            label: {
                           
                         
                        ZStack{
                            
                            Spacer()
                                .frame(width: 75, height: 75)
                                .background(Color(.init(white: 1, alpha: 0.3)))
                                .clipShape(Circle())
                                .cornerRadius(12)
                                .shadow(radius: 1)
                                .padding(.bottom)
                                .padding(.top)
                           
                               
                                HStack(alignment: .bottom) {
                                    Text("DC")
                                    .font(.system(size: 20, weight: .bold))
                                    .padding(.horizontal)
                                   
                                }
                            
                                }
                            })
                        NavigationLink(
                            destination: FLDetailView(),
                            label: {
                           
                         
                        ZStack{
                            
                            Spacer()
                                .frame(width: 75, height: 75)
                                .background(Color(.init(white: 1, alpha: 0.3)))
                                .clipShape(Circle())
                                .cornerRadius(12)
                                .shadow(radius: 1)
                                .padding(.bottom)
                                .padding(.top)
                           
                               
                                HStack(alignment: .bottom) {
                                    Text("FL")
                                    .font(.system(size: 20, weight: .bold))
                                    .padding(.horizontal)
                                   
                                }
                            
                                }
                            })
                        NavigationLink(
                            destination: GADetailView(),
                            label: {
                           
                         
                        ZStack{
                            
                            Spacer()
                                .frame(width: 75, height: 75)
                                .background(Color(.init(white: 1, alpha: 0.3)))
                                .clipShape(Circle())
                                .cornerRadius(12)
                                .shadow(radius: 1)
                                .padding(.bottom)
                                .padding(.top)
                           
                               
                                HStack(alignment: .bottom) {
                                    Text("GA")
                                    .font(.system(size: 20, weight: .bold))
                                    .padding(.horizontal)
                                   
                                }
                            
                                }
                            })
                        NavigationLink(
                            destination: HIDetailView(),
                            label: {
                           
                         
                        ZStack{
                            
                            Spacer()
                                .frame(width: 75, height: 75)
                                .background(Color(.init(white: 1, alpha: 0.3)))
                                .clipShape(Circle())
                                .cornerRadius(12)
                                .shadow(radius: 1)
                                .padding(.bottom)
                                .padding(.top)
                           
                               
                                HStack(alignment: .bottom) {
                                    Text("HI")
                                    .font(.system(size: 20, weight: .bold))
                                    .padding(.horizontal)
                                   
                                }
                            
                                }
                            })
                        NavigationLink(
                            destination: IDDetailView(),
                            label: {
                           
                         
                        ZStack{
                            
                            Spacer()
                                .frame(width: 75, height: 75)
                                .background(Color(.init(white: 1, alpha: 0.3)))
                                .clipShape(Circle())
                                .cornerRadius(12)
                                .shadow(radius: 1)
                                .padding(.bottom)
                                .padding(.top)
                           
                               
                                HStack(alignment: .bottom) {
                                    Text("ID")
                                    .font(.system(size: 20, weight: .bold))
                                    .padding(.horizontal)
                                   
                                }
                            
                                }
                            })
                        NavigationLink(
                            destination: ILDetailView(),
                            label: {
                           
                         
                        ZStack{
                            
                            Spacer()
                                .frame(width: 75, height: 75)
                                .background(Color(.init(white: 1, alpha: 0.3)))
                                .clipShape(Circle())
                                .cornerRadius(12)
                                .shadow(radius: 1)
                                .padding(.bottom)
                                .padding(.top)
                           
                               
                                HStack(alignment: .bottom) {
                                    Text("IL")
                                    .font(.system(size: 20, weight: .bold))
                                    .padding(.horizontal)
                                   
                                }
                            
                                }
                            })
                                }
                    HStack {
                        NavigationLink(
                            destination: INDetailView(),
                            label: {
                           
                         
                        ZStack{
                            
                            Spacer()
                                .frame(width: 75, height: 75)
                                .background(Color(.init(white: 1, alpha: 0.3)))
                                .clipShape(Circle())
                                .cornerRadius(12)
                                .shadow(radius: 1)
                                .padding(.bottom)
                                .padding(.top)
                           
                               
                                HStack(alignment: .bottom) {
                                    Text("IN")
                                    .font(.system(size: 20, weight: .bold))
                                    .padding(.horizontal)
                                   
                                }
                            
                                }
                            })
                        NavigationLink(
                            destination: IADetailView(),
                            label: {
                           
                         
                        ZStack{
                            
                            Spacer()
                                .frame(width: 75, height: 75)
                                .background(Color(.init(white: 1, alpha: 0.3)))
                                .clipShape(Circle())
                                .cornerRadius(12)
                                .shadow(radius: 1)
                                .padding(.bottom)
                                .padding(.top)
                           
                               
                                HStack(alignment: .bottom) {
                                    Text("IA")
                                    .font(.system(size: 20, weight: .bold))
                                    .padding(.horizontal)
                                   
                                }
                            
                                }
                            })
                        NavigationLink(
                            destination: KSDetailView(),
                            label: {
                           
                         
                        ZStack{
                            
                            Spacer()
                                .frame(width: 75, height: 75)
                                .background(Color(.init(white: 1, alpha: 0.3)))
                                .clipShape(Circle())
                                .cornerRadius(12)
                                .shadow(radius: 1)
                                .padding(.bottom)
                                .padding(.top)
                           
                               
                                HStack(alignment: .bottom) {
                                    Text("KS")
                                    .font(.system(size: 20, weight: .bold))
                                    .padding(.horizontal)
                                   
                                }
                            
                                }
                            })
                        NavigationLink(
                            destination: KYDetailView(),
                            label: {
                           
                         
                        ZStack{
                            
                            Spacer()
                                .frame(width: 75, height: 75)
                                .background(Color(.init(white: 1, alpha: 0.3)))
                                .clipShape(Circle())
                                .cornerRadius(12)
                                .shadow(radius: 1)
                                .padding(.bottom)
                                .padding(.top)
                           
                               
                                HStack(alignment: .bottom) {
                                    Text("KY")
                                    .font(.system(size: 20, weight: .bold))
                                    .padding(.horizontal)
                                   
                                }
                            
                                }
                            })
                        NavigationLink(
                            destination: LADetailView(),
                            label: {
                           
                         
                        ZStack{
                            
                            Spacer()
                                .frame(width: 75, height: 75)
                                .background(Color(.init(white: 1, alpha: 0.3)))
                                .clipShape(Circle())
                                .cornerRadius(12)
                                .shadow(radius: 1)
                                .padding(.bottom)
                                .padding(.top)
                           
                               
                                HStack(alignment: .bottom) {
                                    Text("LA")
                                    .font(.system(size: 20, weight: .bold))
                                    .padding(.horizontal)
                                   
                                }
                            
                                }
                            })
                    
                    }
                    HStack {
                        NavigationLink(
                            destination: MEDetailView(),
                            label: {
                           
                         
                        ZStack{
                            
                            Spacer()
                                .frame(width: 75, height: 75)
                                .background(Color(.init(white: 1, alpha: 0.3)))
                                .clipShape(Circle())
                                .cornerRadius(12)
                                .shadow(radius: 1)
                                .padding(.bottom)
                                .padding(.top)
                           
                               
                                HStack(alignment: .bottom) {
                                    Text("ME")
                                    .font(.system(size: 20, weight: .bold))
                                    .padding(.horizontal)
                                   
                                }
                            
                                }
                            })
                        NavigationLink(
                            destination: MDDetailView(),
                            label: {
                           
                         
                        ZStack{
                            
                            Spacer()
                                .frame(width: 75, height: 75)
                                .background(Color(.init(white: 1, alpha: 0.3)))
                                .clipShape(Circle())
                                .cornerRadius(12)
                                .shadow(radius: 1)
                                .padding(.bottom)
                                .padding(.top)
                           
                               
                                HStack(alignment: .bottom) {
                                    Text("MD")
                                    .font(.system(size: 20, weight: .bold))
                                    .padding(.horizontal)
                                   
                                }
                            
                                }
                            })
                        NavigationLink(
                            destination: MADetailView(),
                            label: {
                           
                         
                        ZStack{
                            
                            Spacer()
                                .frame(width: 75, height: 75)
                                .background(Color(.init(white: 1, alpha: 0.3)))
                                .clipShape(Circle())
                                .cornerRadius(12)
                                .shadow(radius: 1)
                                .padding(.bottom)
                                .padding(.top)
                           
                               
                                HStack(alignment: .bottom) {
                                    Text("MA")
                                    .font(.system(size: 20, weight: .bold))
                                    .padding(.horizontal)
                                   
                                }
                            
                                }
                            })
                        NavigationLink(
                            destination: LADetailView(),
                            label: {
                           
                         
                        ZStack{
                            
                            Spacer()
                                .frame(width: 75, height: 75)
                                .background(Color(.init(white: 1, alpha: 0.3)))
                                .clipShape(Circle())
                                .cornerRadius(12)
                                .shadow(radius: 1)
                                .padding(.bottom)
                                .padding(.top)
                           
                               
                                HStack(alignment: .bottom) {
                                    Text("LA")
                                    .font(.system(size: 20, weight: .bold))
                                    .padding(.horizontal)
                                   
                                }
                            
                                }
                            })
                        NavigationLink(
                            destination: MIDetailView(),
                            label: {
                           
                         
                        ZStack{
                            
                            Spacer()
                                .frame(width: 75, height: 75)
                                .background(Color(.init(white: 1, alpha: 0.3)))
                                .clipShape(Circle())
                                .cornerRadius(12)
                                .shadow(radius: 1)
                                .padding(.bottom)
                                .padding(.top)
                           
                               
                                HStack(alignment: .bottom) {
                                    Text("MI")
                                    .font(.system(size: 20, weight: .bold))
                                    .padding(.horizontal)
                                   
                                }
                            
                                }
                            })
                        NavigationLink(
                            destination: MNDetailView(),
                            label: {
                           
                         
                        ZStack{
                            
                            Spacer()
                                .frame(width: 75, height: 75)
                                .background(Color(.init(white: 1, alpha: 0.3)))
                                .clipShape(Circle())
                                .cornerRadius(12)
                                .shadow(radius: 1)
                                .padding(.bottom)
                                .padding(.top)
                           
                               
                                HStack(alignment: .bottom) {
                                    Text("MN")
                                    .font(.system(size: 20, weight: .bold))
                                    .padding(.horizontal)
                                   
                                }
                            
                                }
                            })
                        NavigationLink(
                            destination: MSDetailView(),
                            label: {
                           
                         
                        ZStack{
                            
                            Spacer()
                                .frame(width: 75, height: 75)
                                .background(Color(.init(white: 1, alpha: 0.3)))
                                .clipShape(Circle())
                                .cornerRadius(12)
                                .shadow(radius: 1)
                                .padding(.bottom)
                                .padding(.top)
                           
                               
                                HStack(alignment: .bottom) {
                                    Text("MS")
                                    .font(.system(size: 20, weight: .bold))
                                    .padding(.horizontal)
                                   
                                }
                            
                                }
                            })
                    }
                    HStack {
                        NavigationLink(
                            destination: MODetailView(),
                            label: {
                           
                         
                        ZStack{
                            
                            Spacer()
                                .frame(width: 75, height: 75)
                                .background(Color(.init(white: 1, alpha: 0.3)))
                                .clipShape(Circle())
                                .cornerRadius(12)
                                .shadow(radius: 1)
                                .padding(.bottom)
                                .padding(.top)
                           
                               
                                HStack(alignment: .bottom) {
                                    Text("MO")
                                    .font(.system(size: 20, weight: .bold))
                                    .padding(.horizontal)
                                   
                                }
                            
                                }
                            })
                        NavigationLink(
                            destination: MTDetailView(),
                            label: {
                           
                         
                        ZStack{
                            
                            Spacer()
                                .frame(width: 75, height: 75)
                                .background(Color(.init(white: 1, alpha: 0.3)))
                                .clipShape(Circle())
                                .cornerRadius(12)
                                .shadow(radius: 1)
                                .padding(.bottom)
                                .padding(.top)
                           
                               
                                HStack(alignment: .bottom) {
                                    Text("MT")
                                    .font(.system(size: 20, weight: .bold))
                                    .padding(.horizontal)
                                   
                                }
                            
                                }
                            })
                        NavigationLink(
                            destination: NEDetailView(),
                            label: {
                           
                         
                        ZStack{
                            
                            Spacer()
                                .frame(width: 75, height: 75)
                                .background(Color(.init(white: 1, alpha: 0.3)))
                                .clipShape(Circle())
                                .cornerRadius(12)
                                .shadow(radius: 1)
                                .padding(.bottom)
                                .padding(.top)
                           
                               
                                HStack(alignment: .bottom) {
                                    Text("NE")
                                    .font(.system(size: 20, weight: .bold))
                                    .padding(.horizontal)
                                   
                                }
                            
                                }
                            })
                        NavigationLink(
                            destination: NVDetailView(),
                            label: {
                           
                         
                        ZStack{
                            
                            Spacer()
                                .frame(width: 75, height: 75)
                                .background(Color(.init(white: 1, alpha: 0.3)))
                                .clipShape(Circle())
                                .cornerRadius(12)
                                .shadow(radius: 1)
                                .padding(.bottom)
                                .padding(.top)
                           
                               
                                HStack(alignment: .bottom) {
                                    Text("NV")
                                    .font(.system(size: 20, weight: .bold))
                                    .padding(.horizontal)
                                   
                                }
                            
                                }
                            })
                        NavigationLink(
                            destination: NHDetailView(),
                            label: {
                           
                         
                        ZStack{
                            
                            Spacer()
                                .frame(width: 75, height: 75)
                                .background(Color(.init(white: 1, alpha: 0.3)))
                                .clipShape(Circle())
                                .cornerRadius(12)
                                .shadow(radius: 1)
                                .padding(.bottom)
                                .padding(.top)
                           
                               
                                HStack(alignment: .bottom) {
                                    Text("NH")
                                    .font(.system(size: 20, weight: .bold))
                                    .padding(.horizontal)
                                   
                                }
                            
                                }
                            })
                        NavigationLink(
                            destination: NJDetailView(),
                            label: {
                           
                         
                        ZStack{
                            
                            Spacer()
                                .frame(width: 75, height: 75)
                                .background(Color(.init(white: 1, alpha: 0.3)))
                                .clipShape(Circle())
                                .cornerRadius(12)
                                .shadow(radius: 1)
                                .padding(.bottom)
                                .padding(.top)
                           
                               
                                HStack(alignment: .bottom) {
                                    Text("NJ")
                                    .font(.system(size: 20, weight: .bold))
                                    .padding(.horizontal)
                                   
                                }
                            
                                }
                            })
                        NavigationLink(
                            destination: NMDetailView(),
                            label: {
                           
                         
                        ZStack{
                            
                            Spacer()
                                .frame(width: 75, height: 75)
                                .background(Color(.init(white: 1, alpha: 0.3)))
                                .clipShape(Circle())
                                .cornerRadius(12)
                                .shadow(radius: 1)
                                .padding(.bottom)
                                .padding(.top)
                           
                               
                                HStack(alignment: .bottom) {
                                    Text("NM")
                                    .font(.system(size: 20, weight: .bold))
                                    .padding(.horizontal)
                                   
                                }
                            
                                }
                            })
                    }
                    HStack {
                        NavigationLink(
                            destination: NYDetailView(),
                            label: {
                           
                         
                        ZStack{
                            
                            Spacer()
                                .frame(width: 75, height: 75)
                                .background(Color(.init(white: 1, alpha: 0.3)))
                                .clipShape(Circle())
                                .cornerRadius(12)
                                .shadow(radius: 1)
                                .padding(.bottom)
                                .padding(.top)
                           
                               
                                HStack(alignment: .bottom) {
                                    Text("NY")
                                    .font(.system(size: 20, weight: .bold))
                                    .padding(.horizontal)
                                   
                                }
                            
                                }
                            })
                        NavigationLink(
                            destination: NCDetailView(),
                            label: {
                           
                         
                        ZStack{
                            
                            Spacer()
                                .frame(width: 75, height: 75)
                                .background(Color(.init(white: 1, alpha: 0.3)))
                                .clipShape(Circle())
                                .cornerRadius(12)
                                .shadow(radius: 1)
                                .padding(.bottom)
                                .padding(.top)
                           
                               
                                HStack(alignment: .bottom) {
                                    Text("NC")
                                    .font(.system(size: 20, weight: .bold))
                                    .padding(.horizontal)
                                   
                                }
                            
                                }
                            })
                        NavigationLink(
                            destination: NDDetailView(),
                            label: {
                           
                         
                        ZStack{
                            
                            Spacer()
                                .frame(width: 75, height: 75)
                                .background(Color(.init(white: 1, alpha: 0.3)))
                                .clipShape(Circle())
                                .cornerRadius(12)
                                .shadow(radius: 1)
                                .padding(.bottom)
                                .padding(.top)
                           
                               
                                HStack(alignment: .bottom) {
                                    Text("ND")
                                    .font(.system(size: 20, weight: .bold))
                                    .padding(.horizontal)
                                   
                                }
                            
                                }
                            })
                        NavigationLink(
                            destination: OHDetailView(),
                            label: {
                           
                         
                        ZStack{
                            
                            Spacer()
                                .frame(width: 75, height: 75)
                                .background(Color(.init(white: 1, alpha: 0.3)))
                                .clipShape(Circle())
                                .cornerRadius(12)
                                .shadow(radius: 1)
                                .padding(.bottom)
                                .padding(.top)
                           
                               
                                HStack(alignment: .bottom) {
                                    Text("OH")
                                    .font(.system(size: 20, weight: .bold))
                                    .padding(.horizontal)
                                   
                                }
                            
                                }
                            })
                        NavigationLink(
                            destination: OKDetailView(),
                            label: {
                           
                         
                        ZStack{
                            
                            Spacer()
                                .frame(width: 75, height: 75)
                                .background(Color(.init(white: 1, alpha: 0.3)))
                                .clipShape(Circle())
                                .cornerRadius(12)
                                .shadow(radius: 1)
                                .padding(.bottom)
                                .padding(.top)
                           
                               
                                HStack(alignment: .bottom) {
                                    Text("OK")
                                    .font(.system(size: 20, weight: .bold))
                                    .padding(.horizontal)
                                   
                                }
                            
                                }
                            })
                    }
                    HStack {
                        NavigationLink(
                            destination: ORDetailView(),
                            label: {
                           
                         
                        ZStack{
                            
                            Spacer()
                                .frame(width: 75, height: 75)
                                .background(Color(.init(white: 1, alpha: 0.3)))
                                .clipShape(Circle())
                                .cornerRadius(12)
                                .shadow(radius: 1)
                                .padding(.bottom)
                                .padding(.top)
                           
                               
                                HStack(alignment: .bottom) {
                                    Text("OR")
                                    .font(.system(size: 20, weight: .bold))
                                    .padding(.horizontal)
                                   
                                }
                            
                                }
                            })
                        NavigationLink(
                            destination: PADetailView(),
                            label: {
                           
                         
                        ZStack{
                            
                            Spacer()
                                .frame(width: 75, height: 75)
                                .background(Color(.init(white: 1, alpha: 0.3)))
                                .clipShape(Circle())
                                .cornerRadius(12)
                                .shadow(radius: 1)
                                .padding(.bottom)
                                .padding(.top)
                           
                               
                                HStack(alignment: .bottom) {
                                    Text("PA")
                                    .font(.system(size: 20, weight: .bold))
                                    .padding(.horizontal)
                                   
                                }
                            
                                }
                            })
                        NavigationLink(
                            destination: RIDetailView(),
                            label: {
                           
                         
                        ZStack{
                            
                            Spacer()
                                .frame(width: 75, height: 75)
                                .background(Color(.init(white: 1, alpha: 0.3)))
                                .clipShape(Circle())
                                .cornerRadius(12)
                                .shadow(radius: 1)
                                .padding(.bottom)
                                .padding(.top)
                           
                               
                                HStack(alignment: .bottom) {
                                    Text("RI")
                                    .font(.system(size: 20, weight: .bold))
                                    .padding(.horizontal)
                                   
                                }
                            
                                }
                            })
                        NavigationLink(
                            destination: SCDetailView(),
                            label: {
                           
                         
                        ZStack{
                            
                            Spacer()
                                .frame(width: 75, height: 75)
                                .background(Color(.init(white: 1, alpha: 0.3)))
                                .clipShape(Circle())
                                .cornerRadius(12)
                                .shadow(radius: 1)
                                .padding(.bottom)
                                .padding(.top)
                           
                               
                                HStack(alignment: .bottom) {
                                    Text("SC")
                                    .font(.system(size: 20, weight: .bold))
                                    .padding(.horizontal)
                                   
                                }
                            
                                }
                            })
                        NavigationLink(
                            destination: SDDetailView(),
                            label: {
                           
                         
                        ZStack{
                            
                            Spacer()
                                .frame(width: 75, height: 75)
                                .background(Color(.init(white: 1, alpha: 0.3)))
                                .clipShape(Circle())
                                .cornerRadius(12)
                                .shadow(radius: 1)
                                .padding(.bottom)
                                .padding(.top)
                           
                               
                                HStack(alignment: .bottom) {
                                    Text("SD")
                                    .font(.system(size: 20, weight: .bold))
                                    .padding(.horizontal)
                                   
                                }
                            
                                }
                            })
                        NavigationLink(
                            destination: TNDetailView(),
                            label: {
                           
                         
                        ZStack{
                            
                            Spacer()
                                .frame(width: 75, height: 75)
                                .background(Color(.init(white: 1, alpha: 0.3)))
                                .clipShape(Circle())
                                .cornerRadius(12)
                                .shadow(radius: 1)
                                .padding(.bottom)
                                .padding(.top)
                           
                               
                                HStack(alignment: .bottom) {
                                    Text("TN")
                                    .font(.system(size: 20, weight: .bold))
                                    .padding(.horizontal)
                                   
                                }
                            
                                }
                            })
                    }
                    HStack {
                        NavigationLink(
                            destination: TXDetailView(),
                            label: {
                           
                         
                        ZStack{
                            
                            Spacer()
                                .frame(width: 75, height: 75)
                                .background(Color(.init(white: 1, alpha: 0.3)))
                                .clipShape(Circle())
                                .cornerRadius(12)
                                .shadow(radius: 1)
                                .padding(.bottom)
                                .padding(.top)
                           
                               
                                HStack(alignment: .bottom) {
                                    Text("TX")
                                    .font(.system(size: 20, weight: .bold))
                                    .padding(.horizontal)
                                   
                                }
                            
                                }
                            })
                        NavigationLink(
                            destination: UTDetailView(),
                            label: {
                           
                         
                        ZStack{
                            
                            Spacer()
                                .frame(width: 75, height: 75)
                                .background(Color(.init(white: 1, alpha: 0.3)))
                                .clipShape(Circle())
                                .cornerRadius(12)
                                .shadow(radius: 1)
                                .padding(.bottom)
                                .padding(.top)
                           
                               
                                HStack(alignment: .bottom) {
                                    Text("UT")
                                    .font(.system(size: 20, weight: .bold))
                                    .padding(.horizontal)
                                   
                                }
                            
                                }
                            })
                        NavigationLink(
                            destination: VTDetailView(),
                            label: {
                           
                         
                        ZStack{
                            
                            Spacer()
                                .frame(width: 75, height: 75)
                                .background(Color(.init(white: 1, alpha: 0.3)))
                                .clipShape(Circle())
                                .cornerRadius(12)
                                .shadow(radius: 1)
                                .padding(.bottom)
                                .padding(.top)
                           
                               
                                HStack(alignment: .bottom) {
                                    Text("VT")
                                    .font(.system(size: 20, weight: .bold))
                                    .padding(.horizontal)
                                   
                                }
                            
                                }
                            })
                        NavigationLink(
                            destination: VADetailView(),
                            label: {
                           
                         
                        ZStack{
                            
                            Spacer()
                                .frame(width: 75, height: 75)
                                .background(Color(.init(white: 1, alpha: 0.3)))
                                .clipShape(Circle())
                                .cornerRadius(12)
                                .shadow(radius: 1)
                                .padding(.bottom)
                                .padding(.top)
                           
                               
                                HStack(alignment: .bottom) {
                                    Text("VA")
                                    .font(.system(size: 20, weight: .bold))
                                    .padding(.horizontal)
                                   
                                }
                            
                                }
                            })
                        NavigationLink(
                            destination: WADetailView(),
                            label: {
                           
                         
                        ZStack{
                            
                            Spacer()
                                .frame(width: 75, height: 75)
                                .background(Color(.init(white: 1, alpha: 0.3)))
                                .clipShape(Circle())
                                .cornerRadius(12)
                                .shadow(radius: 1)
                                .padding(.bottom)
                                .padding(.top)
                           
                               
                                HStack(alignment: .bottom) {
                                    Text("WA")
                                    .font(.system(size: 20, weight: .bold))
                                    .padding(.horizontal)
                                   
                                }
                            
                                }
                            })
                        NavigationLink(
                            destination: WVDetailView(),
                            label: {
                           
                         
                        ZStack{
                            
                            Spacer()
                                .frame(width: 75, height: 75)
                                .background(Color(.init(white: 1, alpha: 0.3)))
                                .clipShape(Circle())
                                .cornerRadius(12)
                                .shadow(radius: 1)
                                .padding(.bottom)
                                .padding(.top)
                           
                               
                                HStack(alignment: .bottom) {
                                    Text("WV")
                                    .font(.system(size: 20, weight: .bold))
                                    .padding(.horizontal)
                                   
                                }
                            
                                }
                            })
                        NavigationLink(
                            destination: WIDetailView(),
                            label: {
                           
                         
                        ZStack{
                            
                            Spacer()
                                .frame(width: 75, height: 75)
                                .background(Color(.init(white: 1, alpha: 0.3)))
                                .clipShape(Circle())
                                .cornerRadius(12)
                                .shadow(radius: 1)
                                .padding(.bottom)
                                .padding(.top)
                           
                               
                                HStack(alignment: .bottom) {
                                    Text("WI")
                                    .font(.system(size: 20, weight: .bold))
                                    .padding(.horizontal)
                                   
                                }
                            
                                }
                            })
                        NavigationLink(
                            destination: WYDetailView(),
                            label: {
                           
                         
                        ZStack{
                            
                            Spacer()
                                .frame(width: 75, height: 75)
                                .background(Color(.init(white: 1, alpha: 0.3)))
                                .clipShape(Circle())
                                .cornerRadius(12)
                                .shadow(radius: 1)
                                .padding(.bottom)
                                .padding(.top)
                           
                               
                                HStack(alignment: .bottom) {
                                    Text("WY")
                                    .font(.system(size: 20, weight: .bold))
                                    .padding(.horizontal)
                                   
                                }
                            
                                }
                            })
                        
                        
                    
                    }
                            
                            }
            }
                        
                            
                    }.padding(.horizontal)
        
       
               
        
        HStack(alignment: .lastTextBaseline) {
                    Spacer()
                NavigationLink(
                    destination: StateDataViewII(),
                    label: {
                        Text("See All States")
                            .foregroundColor(Color.init(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)))
                            .font(.subheadline)
                            .bold()
                            .padding(.horizontal)
                    })
                    
          
                }
            
          
        }
        
                    }
        
        }
        
                
                
            
        
    



struct StateDataView_Previews: PreviewProvider {
    
    
    static var previews: some View {
        NavigationView {
            StateDataView()
    }
        HomeView()
    }
}
