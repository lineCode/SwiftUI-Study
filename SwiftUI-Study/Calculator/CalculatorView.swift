//
//  CalculatorView.swift
//  SwiftUI-Study
//
//  Created by wave on 2019/12/9.
//  Copyright © 2019 Barrage. All rights reserved.
//

import SwiftUI

struct CalculatorView: View {
    var body: some View {
        HStack{
            CalculatorButton(
            title: "1",
            size: CGSize(width: 88, height: 88),
            backgroundColor: .yellow) {
                print(1)
            }
            CalculatorButton(
            title: "2",
            size: CGSize(width: 88, height: 88),
            backgroundColor: .yellow) {
                print(2)
            }
            CalculatorButton(
            title: "3",
            size: CGSize(width: 88, height: 88),
            backgroundColor: .yellow) {
                print(3)
            }
            CalculatorButton(
            title: "+",
            size: CGSize(width: 88, height: 88),
            backgroundColor: .yellow) {
                print("+")
            }
        }
    }
}

struct CalculatorButton: View {
    let fontSize: CGFloat = 38
    let title: String
    let size: CGSize
    let backgroundColor: Color
    let action: ()->Void
    
    var body: some View {
        Button(action: action){
            Text(title)
                .font(.system(size: fontSize))
                .foregroundColor(.red)
                .frame(width: size.width, height: size.height)
                .background(backgroundColor)
                .cornerRadius(44)
        }
    }
}
