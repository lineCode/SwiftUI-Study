//
//  CalculatorButton.swift
//  SwiftUI-Study
//
//  Created by wave on 2019/12/9.
//  Copyright © 2019 Barrage. All rights reserved.
//

import SwiftUI

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
                .foregroundColor(.white)
                .frame(width: size.width, height: size.height)
                .background(backgroundColor)
                .cornerRadius(44)
        }
    }
}
