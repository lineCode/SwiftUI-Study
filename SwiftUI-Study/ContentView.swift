//
//  ContentView.swift
//  SwiftUI-Study
//
//  Created by wave on 2019/12/9.
//  Copyright © 2019 Barrage. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        CalculatorView()
        
//        Button(action: {
//            print("button")
//        }) {
//            Text("++!")
//                .font(.system(size: 20, weight: .bold, design: .default))
//                .bold()
//                .padding(.init(top: 10, leading: 0, bottom: 30, trailing: 30))
//                .foregroundColor(.red)
//                .background(Color.yellow)
//        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
