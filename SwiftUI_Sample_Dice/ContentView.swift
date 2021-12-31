//
//  ContentView.swift
//  SwiftUI_Sample_Dice
//
//  Created by cano on 2022/01/01.
//

import SwiftUI

struct ContentView: View {
    
    @State var rolledNumber = 1
    @State var rolledIt = false
    
    var body: some View {
        VStack {
            Image(rolledIt ? "\(rolledNumber)" : "unknown")
                .resizable()
                .frame(width: 100, height: 100)
                .aspectRatio(contentMode: .fit)
                .clipped()
                .padding(.top, 250)
            
            Spacer()
            
            Button(action: {
                let randomNumber = Int.random(in: 1 ..< 7)
                self.rolledNumber = randomNumber
                self.rolledIt = true
            })
            {
                RollButton()
            }
            .padding(.bottom, 40)

        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
