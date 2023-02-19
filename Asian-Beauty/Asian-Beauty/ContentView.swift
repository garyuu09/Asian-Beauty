//
//  ContentView.swift
//  Asian-Beauty
//
//  Created by 松尾健司 on 2023/02/18.
//

import SwiftUI

struct ContentView: View {
    @State var isIndView = false
    @State var no :Int = 0
    
    var data = Data()
  
    var body: some View {
        VStack {
            Text("アジアンビューティー")
            ScrollView(.horizontal) {
                HStack {
                    Group{//インド
                        VStack{
                            Button(action: {
                                self.isIndView.toggle()
                                self.no = Country.indo.rawValue
                            }){
                                ChildView(imageName: "indo-bijo", countryName: "インド")
                            }
                            .fullScreenCover(isPresented: $isIndView)
                            {
                                SecondView(no: $no, isIndView: $isIndView)
                            }
                            BeautyInfo(no: Country.indo.rawValue)
                        }
                    }
                    Group{//タイ
                        VStack{
                            Button(action: {
                                self.isIndView.toggle()
                                self.no = Country.thai.rawValue
                            }){
                                ChildView(imageName: "indo-bijo", countryName: "タイ")
                            }
                            .fullScreenCover(isPresented: $isIndView)
                            {
                                SecondView(no: $no, isIndView: $isIndView)
                                
                            }
                            BeautyInfo(no: Country.thai.rawValue)
                        }
                    }
                    Group{//フィリピン
                        VStack{
                            Button(action: {
                                self.isIndView.toggle()
                                self.no = Country.Philippines.rawValue
                            }){
                                ChildView(imageName: "indo-bijo", countryName: "カンボジア")
                            }
                            .fullScreenCover(isPresented: $isIndView)
                            {
                                SecondView(no: $no, isIndView: $isIndView)
                            }
                            BeautyInfo(no: Country.Philippines.rawValue)
                        }
                    }
                }
            }
        }
        
    }
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct ChildView: View {
    
    let imageName: String
    let countryName: String
 
    var body: some View {
        VStack {
            Image("\(imageName)")
                    .resizable()
                    .frame(width: 250.0, height: 220.0, alignment: .center)
                    .clipShape(Circle())
            Text("\(countryName)")
                    .font(.system(size: 14.0))
                    .fontWeight(.thin)
        }
    }
}

struct BeautyInfo:View{
    let data = Data()
    let no :Int
    let infoTextWidht:CGFloat = 300
    let infoTextHeigh:CGFloat = 200
    var body:some View{
        Text(data.thirdInfo3[no])
            .frame(width: infoTextWidht, height: infoTextHeigh, alignment: .center)
            .minimumScaleFactor(1)
            .lineLimit(3)
        
    }
}

enum Country :Int{
    case indo = 0
    case thai = 1
    case Philippines = 2
    
}
