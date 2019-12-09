//
//  CalculatorView.swift
//  SwiftUI-Study
//
//  Created by wave on 2019/12/9.
//  Copyright © 2019 Barrage. All rights reserved.
//

import SwiftUI

struct CalculatorView: View {

    let pad: [[CalculatorButtonItem]] = [
        [.command(.clear), .command(.flip), .command(.percent), .op(.divide)],
        [.digit(7), .digit(8), .digit(9), .op(.multiply)],
        [.digit(4), .digit(5), .digit(6), .op(.minus)],
        [.digit(1), .digit(2), .digit(3), .op(.plus)],
        [.digit(0), .dot, .op(.equal)]
    ]

    var body: some View {
        VStack(spacing: 8) {
            Text("0")
                .font(.system(size: 76))
                .frame(
                minWidth:0,
                maxWidth: .infinity,
                alignment: .trailing)
            ForEach(pad, id: \.self) { row in
                CalculatorButtonRow(row: row)
            }
        }
    }
}

