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
            Text("アジアンビューティー")
            ScrollView {
                HStack {
                    Button(action: {
                        self.isIndView.toggle()
                        self.no = 0
                    }){
                       ChildView(imageName: "indo-bijo", countryName: "インド")
                    }
                    .fullScreenCover(isPresented: $isIndView)
                    {
                        SecondView(no: $no, isIndView: $isIndView)
                    }
                    Button(action: {
                        self.isIndView.toggle()
                        self.no = 1
                    }){
                       ChildView(imageName: "indo-bijo", countryName: "タイ")
                    }
                    .fullScreenCover(isPresented: $isIndView)
                    {
                        SecondView(no: $no, isIndView: $isIndView)
                        
                    }
                    Button(action: {
                        self.isIndView.toggle()
                        self.no = 2
                    }){
                       ChildView(imageName: "indo-bijo", countryName: "カンボジア")
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

enum cName :Int{
    case indo = 0
    case thai = 1
    case cambodia = 2
    
}
