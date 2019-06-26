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
    private let containerView = UIView()
    private let textView = UITextView()
    private let seperatorView = UIView()

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }

    /// 要求视图计算并返回最适合指定大小的大小
    ///
    /// - Parameter size: 视图应该计算的其最合适的尺寸
    /// - Returns: 适合接收者子视图的新尺寸
    override func sizeThatFits(_ size: CGSize) -> CGSize {
        return CGSize(width: size.width, height: CustomInputView.preferredHeight)
    }
    
    /// 固有尺寸。比如UILabel、UIButton就算不设置大小也会有一个尺寸，这个尺寸就是intrinsicContentSize。
    override var intrinsicContentSize: CGSize {
        var newSize = bounds.size
        if textView.bounds.size.height > 0.0 {
            newSize.height = textView.bounds.size.height + 20.0
        }
        if newSize.height < CustomInputView.preferredHeight || newSize.height > 120.0 {
            newSize.height = CustomInputView.preferredHeight
        }
        return newSize
    }

    override init(frame: CGRect, inputViewStyle: UIInputView.Style) {
        super.init(frame: frame, inputViewStyle: inputViewStyle)
        addSubview(containerView)
        containerView.addSubview(textView)
        containerView.addSubview(seperatorView)
        // 是否将view的autoresizing mask自动转换成autolayout约束
        translatesAutoresizingMaskIntoConstraints = false
        backgroundColor = .colorF5E3F7
        //设置containerView
        containerView.translatesAutoresizingMaskIntoConstraints = false
        //通过safeAreaLayoutGuide约束containerView
        let layoutGuide = safeAreaLayoutGuide
        containerView.topAnchor.constraint(equalTo: layoutGuide.topAnchor).isActive = true
        containerView.bottomAnchor.constraint(equalTo: layoutGuide.bottomAnchor).isActive = true
        containerView.leadingAnchor.constraint(equalTo: layoutGuide.leadingAnchor).isActive = true
        containerView.trailingAnchor.constraint(equalTo: layoutGuide.trailingAnchor).isActive = true
        //设置顶部分割线
        seperatorView.backgroundColor = .colorD9DADB
        seperatorView.translatesAutoresizingMaskIntoConstraints = false
        seperatorView.heightAnchor.constraint(equalToConstant: 0.5).isActive = true
        seperatorView.topAnchor.constraint(equalTo: topAnchor).isActive = true
        seperatorView.leadingAnchor.constraint(equalTo: leadingAnchor).isActive = true
        seperatorView.trailingAnchor.constraint(equalTo: trailingAnchor).isActive = true
        //设置输入框
        textView.translatesAutoresizingMaskIntoConstraints = false
        textView.textContainer.heightTracksTextView = true
        textView.isScrollEnabled = false
        textView.backgroundColor = .white
        textView.font = UIFont.systemFont(ofSize: 17)
        textView.layer.masksToBounds = true
        textView.layer.cornerRadius = 5
        //输入框内边距
        textView.textContainerInset = UIEdgeInsets(top: 10, left: 5, bottom: 10, right: 5)
        //设置拉伸优先级
        textView.setContentHuggingPriority(.defaultHigh, for: NSLayoutConstraint.Axis.vertical)
        //输入框约束
        textView.topAnchor.constraint(equalTo: containerView.topAnchor, constant: 10.0).isActive = true
        textView.bottomAnchor.constraint(equalTo: containerView.bottomAnchor, constant: -8.0).isActive = true
        textView.leadingAnchor.constraint(equalTo: containerView.leadingAnchor, constant: 20.0).isActive = true
        textView.trailingAnchor.constraint(equalTo: containerView.trailingAnchor, constant: -20.0).isActive = true
        //限制textView最高高度
        textView.heightAnchor.constraint(lessThanOrEqualToConstant: 150).isActive = true
    }
}
