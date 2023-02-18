//
//  SecondView.swift
//  Asian-Beauty
//
//  Created by 松尾健司 on 2023/02/18.
//

import Foundation
import SwiftUI

struct SecondView: View {
    var body: some View {
        VStack {
            HStack{
                Text("カンボジア")
                    .multilineTextAlignment(.leading)
                Spacer()
            }
            Image("アンコールワット")
                .resizable()
                .aspectRatio(contentMode: .fit)
            Text("Hello, world!")
            
        }
        .padding()
    }
}

struct SecondView_Previews: PreviewProvider {
    static var previews: some View {
        SecondView()
    }
}
