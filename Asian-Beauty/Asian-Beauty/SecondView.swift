//
//  SecondView.swift
//  Asian-Beauty
//
//  Created by 松尾健司 on 2023/02/18.
//

import Foundation
import SwiftUI

struct SecondView: View {
    var data = Data()
    @Binding var no:Int
    @Binding var isCountryView:Bool
    
    var body: some View {
        ScrollView() {
            VStack {
                //                現在Viewには、最大10個しかView(Textなど）を追加することが出来ない。
                //                その為、10個以上追加したい場合は、Groupで囲うことで、
                //                Groupを1個のViewとして認識してくれ、見た目上10個以上のViewを置くことができる。
                //国
                Group{
                    HStack{
                        Text(data.country[no])
                            .font(.custom("DancingScript-Medium",size:30))
                        Spacer()
                    }
                    .padding()
                    Image(data.image[no])
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 300,height: 200,alignment: .center)
                }
                Group{
                    Text(data.BeautifulName[no])
                        .font(.custom("DancingScript-Bold",size:30))
                }
                //見出し１（女優の詳細情報）
                Group{
                    HStack{
                        Text("Beautiful Girl")
                            .font(.custom("DancingScript-Medium",size:30))
                        Spacer()
                    }
                    .padding()
                    Divider()
                    Text(data.information1[no])
                }

                //見出し2(国の基本情報)
                Group{
                    HStack{
                        Text("Country Info")
                            .font(.custom("DancingScript-Medium",size:30))
                        Spacer()
                    }
                    .padding()
                    Divider()
                    Text(data.secondInfo1[no])
      

                }
                //地図
                MapView(searchKey: data.country[no])
                    .frame(width: 300,height: 200,alignment: .center)
                    .cornerRadius(20)

                Spacer()
                // 戻るボタン
                Button(action: {
                    isCountryView = false
                }) {
                    Text("Back")
                        .frame(width: 100,height: 20)
                        .cornerRadius(20)
                        .background(Color.blue)
                        .foregroundColor(Color.white)
                        .font(.custom("DancingScript-Medium",size:20))
                }
            }
            .padding()
        }
    }
}

//struct SecondView_Previews: PreviewProvider {
//   @State var no = 1
//    static var previews: some View {
//        SecondView(no: $no)
//    }
//}
