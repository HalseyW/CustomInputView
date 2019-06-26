//
//  ViewController.swift
//  CustomInputView
//
//  Created by HalseyW-15 on 2019/6/24.
//  Copyright © 2019 wushhhhhh. All rights reserved.
//

import UIKit

class ViewController: UITableViewController {
    let cutomInputAccessoryView = CustomInputView(frame: .zero, inputViewStyle: .default)
    /// 是否能成为first responder，默认值为false
    override var canBecomeFirstResponder: Bool { return true }
    /// 将一个附属的controller添加到由UITextField或UITextView调出的键盘上
    override var inputAccessoryViewController: UIInputViewController? {
        let customInputAccessoryViewController = UIInputViewController()
        customInputAccessoryViewController.inputView = cutomInputAccessoryView
        return customInputAccessoryViewController
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        initView()
    }

}

extension ViewController {
    func initView() {
        tableView.rowHeight = UITableView.automaticDimension
        tableView.keyboardDismissMode = .onDrag
        tableView.backgroundColor = .colorEBEDEE
    }
}
