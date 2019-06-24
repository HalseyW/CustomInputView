//
//  CustomInputView.swift
//  CustomInputView
//
//  Created by HalseyW-15 on 2019/6/24.
//  Copyright © 2019 wushhhhhh. All rights reserved.
//

import UIKit

class CustomInputView: UIInputView {
    private static let preferredHeight: CGFloat = 58.0
    let containerView = UIView()
    let expandingTextView = UITextView()
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    override func sizeThatFits(_ size: CGSize) -> CGSize {
        return CGSize(width: size.width, height: CustomInputView.preferredHeight)
    }
    
    override var intrinsicContentSize: CGSize {
        var newSize = bounds.size
        if expandingTextView.bounds.size.height > 0.0 {
            newSize.height = expandingTextView.bounds.size.height + 20.0
        }
        if newSize.height < CustomInputView.preferredHeight || newSize.height > 120.0 {
            newSize.height = CustomInputView.preferredHeight
        }
        return newSize
    }

}
