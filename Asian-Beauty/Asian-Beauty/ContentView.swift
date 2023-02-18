//
//  ContentView.swift
//  Asian-Beauty
//
//  Created by 松尾健司 on 2023/02/18.
//

import SwiftUI

struct ContentView: View {
    @State var isIndView = false
    
    var body: some View {
        VStack {
            Text("アジアンビューティー")
            ScrollView(.horizontal) {
                HStack {
                    Button(action: {
                        self.isIndView.toggle()
                    }){
                       ChildView(imageName: "indo-bijo", countryName: "インド")
                    }
                    .fullScreenCover(isPresented: $isIndView)
                    {
                        SecondView()
                    }
                    Button(action: {
                        self.isIndView.toggle()
                    }){
                       ChildView(imageName: "indo-bijo", countryName: "インド")
                    }
                    .fullScreenCover(isPresented: $isIndView)
                    {
                        SecondView()
                    }
                    Button(action: {
                        self.isIndView.toggle()
                    }){
                       ChildView(imageName: "indo-bijo", countryName: "インド")
                    }
                    .fullScreenCover(isPresented: $isIndView)
                    {
                        SecondView()
                    }
                    Button(action: {
                        self.isIndView.toggle()
                    }){
                       ChildView(imageName: "indo-bijo", countryName: "インド")
                    }
                    .fullScreenCover(isPresented: $isIndView)
                    {
                        SecondView()
                    }
                    Button(action: {
                        self.isIndView.toggle()
                    }){
                       ChildView(imageName: "indo-bijo", countryName: "インド")
                    }
                    .fullScreenCover(isPresented: $isIndView)
                    {
                        SecondView()
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

