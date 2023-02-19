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
                Text("情報1")
                Text("情報2")
                Text("情報3")
                Divider()
            }
            //見出し２
            Group{
                HStack{
                    Text("見出し2")
                    Spacer()
                }
                Text("情報4")
                Text("情報5")
                Text("情報6")
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
