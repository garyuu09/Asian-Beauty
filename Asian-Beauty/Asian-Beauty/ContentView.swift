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
  
    var body: some View {
        VStack {
            Text("Asian Beauty Girls")
                .font(.custom("DancingScript-Medium",size:30))
                        
            ScrollView(.horizontal) {
                HStack {
                    Group{//インド
                        Button(action: {
                            self.isIndView.toggle()
                            self.no = Country.indo.rawValue
                        }){
                            ChildView(imageName: "kiara-advani", countryName: "India")
                        }
                        .fullScreenCover(isPresented: $isIndView)
                        {
                            SecondView(no: $no, isIndView: $isIndView)
                        }
                    }
                    Group{//タイ
                        Button(action: {
                            self.isIndView.toggle()
                            self.no = Country.thai.rawValue
                        }){
                            ChildView(imageName: "lisa", countryName: "Thailand")
                        }
                        .fullScreenCover(isPresented: $isIndView)
                        {
                            SecondView(no: $no, isIndView: $isIndView)
                            
                        }
                    }
                    Group{//フィリピン
                        Button(action: {
                            self.isIndView.toggle()
                            self.no = Country.philippines.rawValue
                        }){
                            ChildView(imageName: "angelica", countryName: "Philippines")
                        }
                        .fullScreenCover(isPresented: $isIndView)
                        {
                            SecondView(no: $no, isIndView: $isIndView)
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
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 250.0, height: 300.0, alignment: .center)
                    .clipShape(RoundedRectangle(cornerRadius: 15))
            Text("\(countryName)")
                .font(.custom("DancingScript-Medium",size:20))
                    .fontWeight(.thin)
        }
    }
}

enum Country :Int{
    case indo = 0
    case thai = 1
    case philippines = 2
    
}
