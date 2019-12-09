//
//  CalculatorButtonRow.swift
//  SwiftUI-Study
//
//  Created by wave on 2019/12/9.
//  Copyright © 2019 Barrage. All rights reserved.
//

import SwiftUI

struct CalculatorButtonRow: View {
    
    let row: [CalculatorButtonItem]
    
    var body: some View {
        HStack{
            ForEach(row, id: \.self) { item in
                CalculatorButton(
                    title: item.title,
                    size: item.size,
                    backgroundColor: item.backgroundColor) {
                        print(item.title)
                }
            }
        }
    }
}
