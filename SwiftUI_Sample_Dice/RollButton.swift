//
//  RollButton.swift
//  SwiftUI_Sample_Dice
//
//  Created by cano on 2022/01/01.
//

import SwiftUI

struct RollButton: View {
    var body: some View {
        Text("Roll the dice")
            .frame(width: 240, height: 75)
            .foregroundColor(.white)
            .font(.headline)
            .background(Color.orange)
            .cornerRadius(20)
    }
}

struct RollButtonView_Previews: PreviewProvider {
    static var previews: some View {
        RollButton()
    }
}
