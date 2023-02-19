//
//  SecondView.swift
//  Asian-Beauty
//
//  Created by 松尾健司 on 2023/02/18.
//

import Foundation
import SwiftUI

struct SecondView: View {

    let data = Data()
    var body: some View {
        VStack {
//                現在Viewには、最大10個しかView(Textなど）を追加することが出来ない。
//                その為、10個以上追加したい場合は、Groupで囲うことで、
//                Groupを1個のViewとして認識してくれ、見た目上10個以上のViewを置くことができる。
            //国
            Group{
                HStack{
//                    Text("カンボジア")
                    Text(data.country)
                        .multilineTextAlignment(.leading)
                    Spacer()
                }
//                Image("アンコールワット")
                Image(data.image)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
            }
            //見出し１
            Group{
                HStack{
                    Text("見出し１")
                    Spacer()
                }
                Divider()
                Text(data.information1)
                Text(data.information2)
                Text(data.information3)
                Divider()
            }
            //見出し２
            Group{
                HStack{
                    Text("見出し2")
                    Spacer()
                }
                Text(data.secondInfo1)
                Text(data.secondInfo2)
                Text(data.secondInfo3)

            }
        }
        .padding()
    }
}

struct SecondView_Previews: PreviewProvider {
    static var previews: some View {
        SecondView()
    }
}
