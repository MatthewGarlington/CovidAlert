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
    
    @ObservedObject var tweetsvm = TwitterViewModel()
    
    
    
    
    let testNewsArray = News(articles: [Articles(author: "Tim Apple", title: "Coronavirus in N.Y.: Latest Updates", description: "Upper Manhattan and the southern part of Staten Island face stricter restrictions as officials battle a second wave of the outbreak.", url: "www.facebook.com", urlToImage: "https://static01.nyt.com/images/2020/11/24/nyregion/24nytoday-photo/24nytoday-photo-facebookJumbo.jpg", content: "")])
    
    let urlToImage = "https://static01.nyt.com/images/2020/11/24/nyregion/24nytoday-photo/24nytoday-photo-facebookJumbo.jpg"
    
    let description = "Upper Manhattan and the southern part of Staten Island face stricter restrictions as officials battle a second wave of the outbreak."
    
    let longtext = "egfoirehnwougneoturng oinwgorunwogntrewoginrewogneorginewo ginwegroingweoginweorginwo iwenrgoiwnerogiwnergowine rgowinog iwenrgowin gweo owewrignoweirgnwoerginwogrin oweri ngwoeirgnwogrin  oweirngowienrgowiengrow oweirngoeirnw oweirn owiernrowf  nforwne ofiwnerfo nwef owe rignwoernwoie oewino giwnero oaeirngow enr forwehn gfoiwnergoinweorgn oweirngoiwenginergonweronwo irnweorignign onwerignweroingweoirn eorn owigrnorignwgown oweirng oeirgnf rkgn woieurgnowenginteogno erngoiwentgoinwteoignweognowetgnon oiengoinetgoiwnontontro noengown oing owit ngowintgowgn owntwonwgitngonwtnwetgnwgnowgnw eoinoinwgontgowngtowi ngowgno noienog noginowignowgnwoiwngoinwtgiowngowingwognoiwngowgnwognoeigneo nwoignwerogiwengoweingtwognw oeiwneorignwoegnwoegn oengong oweitngowengtowinewongownon o nsowenrgonwoeirgnn n n nngnoserign owergnowign oweignweoirtnwognweorgwin goiwerng owneog iwne goiwneg owignoengoweigntwoietgn owignwognweog noweitngowetgnwoertngowng iowengeow gnwioegnweoignwegnoiwengowengowenogwengnewoneneon o no nignweorgnwgnioerngoengoewngoeno no n onwgiowrng"
    let LinkSample = "https://fluffy.es/parse-json-using-decodable-protocol/"
    
    
    
    
    
    var body: some View {
        
        VStack {
            
            Text("\(vm2.allStateDetails?.state ?? "State") News")
                .fontWeight(.bold)
                .font(.title)
                .foregroundColor(.black)
            
            ScrollView(.horizontal, showsIndicators: false) {
                
                
                HStack {
     
              
                        VStack {
                            ZStack {
                                Spacer()
                                    .frame(width: 390, height: 1200)
                                    .background(Color.init(#colorLiteral(red: 0.3028137088, green: 0.2979239523, blue: 0.7478307486, alpha: 0.7402369619)))
                                    .cornerRadius(12)
                                    .shadow(radius: 4)
                                    .padding(.all)
                                
                                VStack {
                                    
                                    KFImage(URL(string: urlToImage))
                                        .resizable()
                                        .frame(width: 390, height: 230)
                                    
                                    
                                    Text("\(tweetsvm.newsDetails?.value[1].title ?? "Test Title")")
                                        
                                        .fontWeight(.bold)
                                        .font(.system(size: 20))
                                        .frame(width: 300, height: 100)
                                    
                                    
                                    
                                    
                                    Text("\(tweetsvm.newsDetails?.value[1].description ?? description)")
                                        .fontWeight(.semibold)
                                        .font(.system(size: 20))
                                        .frame(width: 380, height: 150)
                                    
                                    
                                    
                                    
                                    Text("\(tweetsvm.newsDetails?.value[1].body ?? longtext)")
                                        .foregroundColor(.black)
                                        .font(.system(size: 20))
                                        .frame(width: 370, height: 600)
                                        .padding()
                                    
                                    Link(destination: URL(string: "\(tweetsvm.newsDetails?.value[1].url ?? LinkSample)")!, label: {
                                        Text("Read More")
                                            .foregroundColor(.white)
                                    })
                                }
                            }
                        
                    }
                    VStack {
                        ZStack {
                            Spacer()
                                .frame(width: 390, height: 1200)
                                .background(Color.init(#colorLiteral(red: 0.3028137088, green: 0.2979239523, blue: 0.7478307486, alpha: 0.7402369619)))
                                .cornerRadius(12)
                                .shadow(radius: 4)
                                .padding(.all)
                            
                            VStack {
                                
                                KFImage(URL(string: urlToImage))
                                    .resizable()
                                    .frame(width: 390, height: 230)
                                
                                
                                Text("\(tweetsvm.newsDetails?.value[2].title ?? "Test Title")")
                                    
                                    .fontWeight(.bold)
                                    .font(.system(size: 20))
                                    .frame(width: 300, height: 100)
                                
                                
                                
                                
                                Text("\(tweetsvm.newsDetails?.value[2].description ?? description)")
                                    .fontWeight(.semibold)
                                    .font(.system(size: 20))
                                    .frame(width: 380, height: 150)
                                
                                
                                
                                
                                Text("\(tweetsvm.newsDetails?.value[2].body ?? longtext)")
                                    .foregroundColor(.black)
                                    .font(.system(size: 20))
                                    .frame(width: 370, height: 600)
                                    .padding()
                                
                                Link(destination: URL(string: "\(tweetsvm.newsDetails?.value[2].url ?? LinkSample)")!, label: {
                                    Text("Read More")
                                        .foregroundColor(.white)
                                })
                            }
                        }
                    
                }
                    VStack {
                        ZStack {
                            Spacer()
                                .frame(width: 390, height: 1200)
                                .background(Color.init(#colorLiteral(red: 0.3028137088, green: 0.2979239523, blue: 0.7478307486, alpha: 0.7402369619)))
                                .cornerRadius(12)
                                .shadow(radius: 4)
                                .padding(.all)
                            
                            VStack {
                                
                                KFImage(URL(string: urlToImage))
                                    .resizable()
                                    .frame(width: 390, height: 230)
                                
                                
                                Text("\(tweetsvm.newsDetails?.value[3].title ?? "Test Title")")
                                    
                                    .fontWeight(.bold)
                                    .font(.system(size: 20))
                                    .frame(width: 300, height: 100)
                                
                                
                                
                                
                                Text("\(tweetsvm.newsDetails?.value[3].description ?? description)")
                                    .fontWeight(.semibold)
                                    .font(.system(size: 20))
                                    .frame(width: 380, height: 150)
                                
                                
                                
                                
                                Text("\(tweetsvm.newsDetails?.value[3].body ?? longtext)")
                                    .foregroundColor(.black)
                                    .font(.system(size: 20))
                                    .frame(width: 370, height: 600)
                                    .padding()
                                
                                Link(destination: URL(string: "\(tweetsvm.newsDetails?.value[3].url ?? LinkSample)")!, label: {
                                    Text("Read More")
                                        .foregroundColor(.white)
                                })
                            }
                        }
                    
                }
                    
                    VStack {
                        ZStack {
                            Spacer()
                                .frame(width: 390, height: 1200)
                                .background(Color.init(#colorLiteral(red: 0.3028137088, green: 0.2979239523, blue: 0.7478307486, alpha: 0.7402369619)))
                                .cornerRadius(12)
                                .shadow(radius: 4)
                                .padding(.all)
                            
                            VStack {
                                
                                KFImage(URL(string: urlToImage))
                                    .resizable()
                                    .frame(width: 390, height: 230)
                                
                                
                                Text("\(tweetsvm.newsDetails?.value[4].title ?? "Test Title")")
                                    
                                    .fontWeight(.bold)
                                    .font(.system(size: 20))
                                    .frame(width: 300, height: 100)
                                
                                
                                
                                
                                Text("\(tweetsvm.newsDetails?.value[4].description ?? description)")
                                    .fontWeight(.semibold)
                                    .font(.system(size: 20))
                                    .frame(width: 380, height: 150)
                                
                                
                                
                                
                                Text("\(tweetsvm.newsDetails?.value[4].body ?? longtext)")
                                    .foregroundColor(.black)
                                    .font(.system(size: 20))
                                    .frame(width: 370, height: 600)
                                    .padding()
                                
                                Link(destination: URL(string: "\(tweetsvm.newsDetails?.value[4].url ?? LinkSample)")!, label: {
                                    Text("Read More")
                                        .foregroundColor(.white)
                                })
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
