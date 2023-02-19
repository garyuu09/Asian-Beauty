//
//  Data.swift
//  Asian-Beauty
//
//  Created by 松尾健司 on 2023/02/19.
//

import Foundation
class Data :ObservableObject {
    @Published var country = ["インド","タイ","カンボジア"]
    @Published var image = ["タージマハル","アンコールワット","タイランド"]
    var information1 = "情報１"
    var information2 = "情報２"
    var information3 = "情報３"
    var secondInfo1 = "情報４"
    var secondInfo2 = "情報５"
    var secondInfo3 = "情報６"

}
