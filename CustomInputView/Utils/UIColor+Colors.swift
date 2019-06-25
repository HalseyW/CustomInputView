//
//  UIColor+Colors.swift
//  CustomInputView
//
//  Created by HalseyW-15 on 2019/6/25.
//  Copyright © 2019 wushhhhhh. All rights reserved.
//

import UIKit

extension UIColor {
    convenience init(r: Int, g: Int, b: Int, alpha: CGFloat) {
        self.init(red: CGFloat(r) / 255.0, green: CGFloat(g) / 255.0, blue: CGFloat(b) / 255.0, alpha: alpha)
    }
    
    static let colorEBEDEE = UIColor(r: 235, g: 237, b: 238, alpha: 1)
    static let colorF5E3F7 = UIColor(r: 245, g: 246, b: 247, alpha: 1)
    static let colorD9DADB = UIColor(r: 217, g: 218, b: 219, alpha: 1)

    
    static let colorFF464C = UIColor(r: 255, g: 70, b: 76, alpha: 1)
    static let color332929 = UIColor(r: 51, g: 41, b: 41, alpha: 1)
    static let colorF5F6F7 = UIColor(r: 245, g: 246, b: 247, alpha: 1)
    static let color665A5A = UIColor(r: 102, g: 90, b: 90, alpha: 1)
    static let color998787 = UIColor(r: 153, g: 135, b: 135, alpha: 1)
    static let color999999 = UIColor(r: 153, g: 153, b: 153, alpha: 1)
    static let colorFF5B67 = UIColor(r: 255, g: 91, b: 103, alpha: 1)
    static let colorFFCCCF = UIColor(r: 255, g: 204, b: 207, alpha: 1)
    static let color222222 = UIColor(r: 34, g: 34, b: 34, alpha: 1)
    static let colorFF464C60 = UIColor(r: 255, g: 70, b: 76, alpha: 0.4)
    static let colorF1F1F1 = UIColor(r: 241, g: 241, b: 241, alpha: 1)
    static let colorEDEDED = UIColor(r: 237, g: 237, b: 237, alpha: 1)
    static let color666666 = UIColor(r: 102, g: 102, b: 102, alpha: 1)
    static let color313333 = UIColor(r: 49, g: 51, b: 51, alpha: 1)
    static let colorEEEEEE = UIColor(r: 238, g: 238, b: 238, alpha: 1)
    static let colorF0F0F0 = UIColor(r: 240, g: 240, b: 240, alpha: 1)
    static let color50DC28 = UIColor(r: 80, g: 220, b: 40, alpha: 1)
    static let colorDCDCDC = UIColor(r: 220, g: 220, b: 220, alpha: 1)
}
