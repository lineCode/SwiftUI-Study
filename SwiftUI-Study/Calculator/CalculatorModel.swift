//
//  CalculatorModel.swift
//  SwiftUI-Study
//
//  Created by wave on 2019/12/9.
//  Copyright © 2019 Barrage. All rights reserved.
//

import SwiftUI

enum CalculatorButtonItem {

    enum Op: String {
        case plus = "+"
        case minus = "-"
        case divide = "÷"
        case multiply = "×"
        case equal = "="
    }
    
    enum Command: String {
        case clear = "AC"
        case flip = "+/-"
        case percent = "%"
    }
    
    /*
     把计算器上的按钮分为四大类:
        1. 1 - 9 数字                   digit
        2. 小数点                       dot
        3. 加减乘除号这些操作按钮          op
        4. 清空 翻转等(Command)这类命令   command
     */
    case digit(Int)
    case dot
    case op(Op)
    case command(Command)
}

extension CalculatorButtonItem {
    var title: String{
        switch self {
        case .digit(let value): return String(value)
        case .dot:              return "."
        case .op(let o) :       return o.rawValue
        case .command(let c):   return c.rawValue
        }
    }
    
    var size: CGSize {
        CGSize(width: 88, height: 88)
    }
    
    var backgroundColor: Color {
        switch self {
        case .digit, .dot:      return .gray
        case .op:               return .orange
        case .command:          return Color.white.opacity(0.5)
        }
    }
}
