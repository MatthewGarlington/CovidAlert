//
//  StateNewsCard.swift
//  CovidAlert
//
//  Created by Matthew Garlington on 12/22/20.
//

import SwiftUI
import KingfisherSwiftUI


struct StateNewsCard: View {
    
    @ObservedObject var vm = NewYorkTimesViewModel()
    
    let testNewsData = News(articles: [Articles(author: "Tim Apple", title: "Coronavirus in N.Y.: Latest Updates", description: "Upper Manhattan and the southern part of Staten Island face stricter restrictions as officials battle a second wave of the outbreak.", url: "www.facebook.com", urlToImage: "https://static01.nyt.com/images/2020/11/24/nyregion/24nytoday-photo/24nytoday-photo-facebookJumbo.jpg", content: "")])
    let description = "Upper Manhattan and the southern part of Staten Island face stricter restrictions as officials battle a second wave of the outbreak."
    let title = "Coronavirus in N.Y.: Latest Updates"
    
    let samplePhoto = "https://static01.nyt.com/images/2020/11/24/nyregion/24nytoday-photo/24nytoday-photo-facebookJumbo.jpg"
    let samplePhotoTwo = "https://www.cdc.gov/media/dpk/diseases-and-conditions/coronavirus/images/outbreak-coronavirus-world-1024x506px.jpg"
    
    let samplePhotoThree = "https://image.shutterstock.com/image-vector/vector-illustration-masked-people-coronavirus-600w-1675832650.jpg"
    
    let samplePhotoFour = "https://static.euronews.com/articles/stories/04/81/54/46/1440x810_cmsv2_8ab3ce8e-6cd2-5dc2-9d98-c7abfcff866f-4815446.jpg"
    
    let samplePhotoFive = "https://www.gannett-cdn.com/presto/2020/12/02/USAT/4b0cb531-58e2-496b-bc17-729ef23ce810-VPC_COVID_VACCINE_SIDE_EFFECTS_DESK_THUMB.jpg"
    
    let samplePhotoSix = "https://www.unicef.org/sites/default/files/styles/hero_mobile/public/UNI310746.jpg?itok=xxIcHZDJ"
   
    let author = "Tim Apple"
    
    let url = "https://www.nytimes.com/2020/11/24/nyregion/coronavirus-nyc.html"
    
    
    
    
    let content = """
    While American regulators work line by line through the raw data from vaccine makers to check their trial results, their counterparts in Britain rely more heavily on the companies’ own analyses.
    

"""
 
    private var threeColumnGrid = [GridItem(.flexible()), GridItem(.flexible())]
    
    
    
    var body: some View {
        
        
        ScrollView {
            
            VStack(spacing: 20) {
                
                VStack {
                    
                    
                    VStack {
                      
                            
                            ZStack{
                                
                                
                                Spacer()
                                    .frame(width: 400, height: 450)
                                    .background(Color.init(#colorLiteral(red: 0.3028137088, green: 0.2979239523, blue: 0.7478307486, alpha: 0.8472164735)))
                                    .cornerRadius(30)
                                    .shadow(radius: 4)
                                  
                                
                                
                                
                                Link(
                                    destination: URL(string: vm.nytimesnews?.response.docs[0].web_url ?? url)!,
                                    label: {
                                        VStack {
                                      
                                            
                                            ZStack(alignment: .bottomLeading) {
                                                KFImage(URL(string: samplePhoto)!)
                                                    .resizable()
                                                    .frame(width: 380, height: 230)
                                                    
                                                
                                                LinearGradient(gradient: Gradient(colors: [Color.clear, Color.black]), startPoint: .center, endPoint: .bottom)
                                                    .frame(width: 380, height: 250)
                                                
                                                HStack {
                                                    VStack(alignment: .leading) {
                                                        
                                                        Text(vm.nytimesnews?.response.docs[0].headline.print_headline ?? title)
                                                            .foregroundColor(.white)
                                                            .font(.system(size: 18, weight: .bold))
                                                
                                //                        vm.nytimesnews?.response.docs[0].headline.print_headline ??
                                                    }
                                                    Spacer()
                                                    
                                               
                                                    
                                                    Text(vm.nytimesnews?.response.docs[0].byline.original ?? author)
                                                        .foregroundColor(.white)
                                                        .font(.system(size: 14, weight: .regular))
                                                        .frame(width: 80)
                                                        .multilineTextAlignment(.trailing)
                                //                    vm.nytimesnews?.response.docs[0].byline.original ??
                                                                
                                                }.padding()
                                            }.padding()
                                        VStack(alignment: .leading) {
                                            
                                       
                                                
                                            Text(vm.nytimesnews?.response.docs[0].abstract ?? content)
                                                    .frame(width: 350, height: 200, alignment: .center)
                                                    .font(.system(size: 17, weight: .bold))
                                                    .foregroundColor(.white)
                                            
                                            VStack(alignment: .center) {
                                         
                                            
                                            
                                                    
                                            }
                                            
                                        }
                                            
                                        }
                                    })
                                
                            }
                            
                            
                        
                        
                        
                        
                    }
                    VStack {
                      
                            
                            ZStack{
                                
                                
                                Spacer()
                                    .frame(width: 400, height: 450)
                                    .background(Color.init(#colorLiteral(red: 0.3028137088, green: 0.2979239523, blue: 0.7478307486, alpha: 0.8472164735)))
                                    .cornerRadius(30)
                                    .shadow(radius: 4)
                                  
                                
                                
                                
                                Link(
                                    destination: URL(string: vm.nytimesnews?.response.docs[1].web_url ?? url)!,
                                    label: {
                                        VStack {
                                      
                                            
                                            ZStack(alignment: .bottomLeading) {
                                                KFImage(URL(string: samplePhotoTwo))
                                                    .resizable()
                                                    .frame(width: 380, height: 230)
                                                    
                                                
                                                LinearGradient(gradient: Gradient(colors: [Color.clear, Color.black]), startPoint: .center, endPoint: .bottom)
                                                    .frame(width: 380, height: 250)
                                                
                                                HStack {
                                                    VStack(alignment: .leading) {
                                                        
                                                        Text(vm.nytimesnews?.response.docs[1].headline.print_headline ?? title)
                                                            .foregroundColor(.white)
                                                            .font(.system(size: 18, weight: .bold))
                                                
                                //                        vm.nytimesnews?.response.docs[0].headline.print_headline ??
                                                    }
                                                    Spacer()
                                                    
                                               
                                                    
                                                    Text(vm.nytimesnews?.response.docs[1].byline.original ?? author)
                                                        .foregroundColor(.white)
                                                        .font(.system(size: 14, weight: .regular))
                                                        .frame(width: 80)
                                                        .multilineTextAlignment(.trailing)
                                //                    vm.nytimesnews?.response.docs[0].byline.original ??
                                                                
                                                }.padding()
                                            }.padding()
                                        VStack(alignment: .leading) {
                                            
                                       
                                                
                                            Text(vm.nytimesnews?.response.docs[1].abstract ?? content)
                                                    .frame(width: 350, height: 200, alignment: .center)
                                                    .font(.system(size: 17, weight: .bold))
                                                    .foregroundColor(.white)
                                            
                                            VStack(alignment: .center) {
                                         
                                            
                                            
                                                    
                                            }
                                            
                                        }
                                            
                                        }
                                    })
                                
                            }
                            
                            
                        
                        
                        
                        
                    }
                    VStack {
                      
                            
                            ZStack{
                                
                                
                                Spacer()
                                    .frame(width: 400, height: 450)
                                    .background(Color.init(#colorLiteral(red: 0.3028137088, green: 0.2979239523, blue: 0.7478307486, alpha: 0.8472164735)))
                                    .cornerRadius(30)
                                    .shadow(radius: 4)
                                  
                                
                                
                                
                                Link(
                                    destination: URL(string: vm.nytimesnews?.response.docs[2].web_url ?? url)!,
                                    label: {
                                        VStack {
                                      
                                            
                                            ZStack(alignment: .bottomLeading) {
                                                KFImage(URL(string: samplePhotoThree))
                                                    .resizable()
                                                    .frame(width: 380, height: 230)
                                                    
                                                
                                                LinearGradient(gradient: Gradient(colors: [Color.clear, Color.black]), startPoint: .center, endPoint: .bottom)
                                                    .frame(width: 380, height: 250)
                                                
                                                HStack {
                                                    VStack(alignment: .leading) {
                                                        
                                                        Text(vm.nytimesnews?.response.docs[2].headline.print_headline ?? title)
                                                            .foregroundColor(.white)
                                                            .font(.system(size: 18, weight: .bold))
                                                
                                //                        vm.nytimesnews?.response.docs[0].headline.print_headline ??
                                                    }
                                                    Spacer()
                                                    
                                               
                                                    
                                                    Text(vm.nytimesnews?.response.docs[2].byline.original ?? author)
                                                        .foregroundColor(.white)
                                                        .font(.system(size: 14, weight: .regular))
                                                        .frame(width: 80)
                                                        .multilineTextAlignment(.trailing)
                                //                    vm.nytimesnews?.response.docs[0].byline.original ??
                                                                
                                                }.padding()
                                            }.padding()
                                        VStack(alignment: .leading) {
                                            
                                       
                                                
                                            Text(vm.nytimesnews?.response.docs[2].abstract ?? content)
                                                    .frame(width: 350, height: 200, alignment: .center)
                                                    .font(.system(size: 17, weight: .bold))
                                                    .foregroundColor(.white)
                                            
                                            VStack(alignment: .center) {
                                         
                                            
                                            
                                                    
                                            }
                                            
                                        }
                                            
                                        }
                                    })
                                
                            }
                            
                            
                        
                        
                        
                        
                    }
                    VStack {
                      
                            
                            ZStack{
                                
                                
                                Spacer()
                                    .frame(width: 400, height: 450)
                                    .background(Color.init(#colorLiteral(red: 0.3028137088, green: 0.2979239523, blue: 0.7478307486, alpha: 0.8472164735)))
                                    .cornerRadius(30)
                                    .shadow(radius: 4)
                                  
                                
                                
                                
                                Link(
                                    destination: URL(string: vm.nytimesnews?.response.docs[3].web_url ?? url)!,
                                    label: {
                                        VStack {
                                      
                                            
                                            ZStack(alignment: .bottomLeading) {
                                                KFImage(URL(string: samplePhotoFour)!)
                                                    .resizable()
                                                    .frame(width: 380, height: 230)
                                                    
                                                
                                                LinearGradient(gradient: Gradient(colors: [Color.clear, Color.black]), startPoint: .center, endPoint: .bottom)
                                                    .frame(width: 380, height: 250)
                                                
                                                HStack {
                                                    VStack(alignment: .leading) {
                                                        
                                                        Text(vm.nytimesnews?.response.docs[3].headline.print_headline ?? title)
                                                            .foregroundColor(.white)
                                                            .font(.system(size: 18, weight: .bold))
                                                
                                //                        vm.nytimesnews?.response.docs[0].headline.print_headline ??
                                                    }
                                                    Spacer()
                                                    
                                               
                                                    
                                                    Text(vm.nytimesnews?.response.docs[3].byline.original ?? author)
                                                        .foregroundColor(.white)
                                                        .font(.system(size: 14, weight: .regular))
                                                        .frame(width: 80)
                                                        .multilineTextAlignment(.trailing)
                                //                    vm.nytimesnews?.response.docs[0].byline.original ??
                                                                
                                                }.padding()
                                            }.padding()
                                        VStack(alignment: .leading) {
                                            
                                       
                                                
                                            Text(vm.nytimesnews?.response.docs[3].abstract ?? content)
                                                    .frame(width: 350, height: 200, alignment: .center)
                                                    .font(.system(size: 17, weight: .bold))
                                                    .foregroundColor(.white)
                                            
                                            VStack(alignment: .center) {
                                         
                                            
                                            
                                                    
                                            }
                                            
                                        }
                                            
                                        }
                                    })
                                
                            }
                            
                            
                        
                        
                        
                        
                    }
                    VStack {
                      
                            
                            ZStack{
                                
                                
                                Spacer()
                                    .frame(width: 400, height: 450)
                                    .background(Color.init(#colorLiteral(red: 0.3028137088, green: 0.2979239523, blue: 0.7478307486, alpha: 0.8472164735)))
                                    .cornerRadius(30)
                                    .shadow(radius: 4)
                                  
                                
                                
                                
                                Link(
                                    destination: URL(string: vm.nytimesnews?.response.docs[4].web_url ?? url)!,
                                    label: {
                                        VStack {
                                      
                                            
                                            ZStack(alignment: .bottomLeading) {
                                                KFImage(URL(string: samplePhotoFive)!)
                                                    .resizable()
                                                    .frame(width: 380, height: 230)
                                                    
                                                
                                                LinearGradient(gradient: Gradient(colors: [Color.clear, Color.black]), startPoint: .center, endPoint: .bottom)
                                                    .frame(width: 380, height: 250)
                                                
                                                HStack {
                                                    VStack(alignment: .leading) {
                                                        
                                                        Text(vm.nytimesnews?.response.docs[4].headline.print_headline ?? title)
                                                            .foregroundColor(.white)
                                                            .font(.system(size: 18, weight: .bold))
                                                
                                //                        vm.nytimesnews?.response.docs[0].headline.print_headline ??
                                                    }
                                                    Spacer()
                                                    
                                               
                                                    
                                                    Text(vm.nytimesnews?.response.docs[4].byline.original ?? author)
                                                        .foregroundColor(.white)
                                                        .font(.system(size: 14, weight: .regular))
                                                        .frame(width: 80)
                                                        .multilineTextAlignment(.trailing)
                                //                    vm.nytimesnews?.response.docs[0].byline.original ??
                                                                
                                                }.padding()
                                            }.padding()
                                        VStack(alignment: .leading) {
                                            
                                       
                                                
                                            Text(vm.nytimesnews?.response.docs[4].abstract ?? content)
                                                    .frame(width: 350, height: 200, alignment: .center)
                                                    .font(.system(size: 17, weight: .bold))
                                                    .foregroundColor(.white)
                                            
                                            VStack(alignment: .center) {
                                         
                                            
                                            
                                                    
                                            }
                                            
                                        }
                                            
                                        }
                                    })
                                
                            }
                            
                            
                        
                        
                        
                        
                    }
                    VStack {
                      
                            
                            ZStack{
                                
                                
                                Spacer()
                                    .frame(width: 400, height: 450)
                                    .background(Color.init(#colorLiteral(red: 0.3028137088, green: 0.2979239523, blue: 0.7478307486, alpha: 0.8472164735)))
                                    .cornerRadius(30)
                                    .shadow(radius: 4)
                                  
                                
                                
                                
                                Link(
                                    destination: URL(string: vm.nytimesnews?.response.docs[5].web_url ?? url)!,
                                    label: {
                                        VStack {
                                      
                                            
                                            ZStack(alignment: .bottomLeading) {
                                                KFImage(URL(string: samplePhotoSix)!)
                                                    .resizable()
                                                    .frame(width: 380, height: 230)
                                                    
                                                
                                                LinearGradient(gradient: Gradient(colors: [Color.clear, Color.black]), startPoint: .center, endPoint: .bottom)
                                                    .frame(width: 380, height: 250)
                                                
                                                HStack {
                                                    VStack(alignment: .leading) {
                                                        
                                                        Text(vm.nytimesnews?.response.docs[5].headline.print_headline ?? title)
                                                            .foregroundColor(.white)
                                                            .font(.system(size: 18, weight: .bold))
                                                
                                //                        vm.nytimesnews?.response.docs[0].headline.print_headline ??
                                                    }
                                                    Spacer()
                                                    
                                               
                                                    
                                                    Text(vm.nytimesnews?.response.docs[5].byline.original ?? author)
                                                        .foregroundColor(.white)
                                                        .font(.system(size: 14, weight: .regular))
                                                        .frame(width: 80)
                                                        .multilineTextAlignment(.trailing)
                                //                    vm.nytimesnews?.response.docs[0].byline.original ??
                                                                
                                                }.padding()
                                            }.padding()
                                        VStack(alignment: .leading) {
                                            
                                       
                                                
                                            Text(vm.nytimesnews?.response.docs[5].abstract ?? content)
                                                    .frame(width: 350, height: 200, alignment: .center)
                                                    .font(.system(size: 17, weight: .bold))
                                                    .foregroundColor(.white)
                                            
                                            VStack(alignment: .center) {
                                         
                                            
                                            
                                                    
                                            }
                                            
                                        }
                                            
                                        }
                                    })
                                
                            }
                            
                            
                        
                        
                        
                        
                    }
                    
                }
            }
            
        }
        
        
    }
    
    
}





struct StateNewsCard_Previews: PreviewProvider {
    static var previews: some View {
    
        NavigationView {
        StateNewsCard()
        }
        
    }
}
