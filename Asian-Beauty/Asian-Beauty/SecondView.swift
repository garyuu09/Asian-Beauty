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
    @Binding var isIndView:Bool
    
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
                            .multilineTextAlignment(.leading)
                        Spacer()
                    }
                    
                    Image(data.image[no])
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                }
                //見出し１
                Group{
                    HStack{
                        Text(data.title1[no])
                        Spacer()
                    }
                    Divider()
                    Text(data.information1[no])
                    Text(data.information2[no])
                    Text(data.information3[no])
                }
                //見出し２
                Group{
                    HStack{
                        Text(data.title2[no])
                        Spacer()
                    }
                    Divider()
                    Text(data.secondInfo1[no])
                    Text(data.secondInfo2[no])
                    Text(data.secondInfo3[no])
                    
                }
                //見出し3
                Group{
                    HStack{
                        Text(data.title3[no])
                        Spacer()
                    }
                    Divider()
                    Text(data.thirdInfo1[no])
                    Text(data.thirdInfo2[no])
//                    Text(data.thirdInfo3[no])

                }
                //地図
                MapView(searchKey: data.country[no])
                    .frame(width: 300,height: 200,alignment: .center)
                    .cornerRadius(20)

                Spacer()
                // 戻るボタン
                Button(action: {
                    isIndView = false
                }) {
                    Text("Back")
                        .frame(width: 100,height: 20)
                        .cornerRadius(20)
                        .background(Color.blue)
                        .foregroundColor(Color.white)
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
