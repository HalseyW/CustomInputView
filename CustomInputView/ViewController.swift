//
//  ViewController.swift
//  CustomInputView
//
//  Created by HalseyW-15 on 2019/6/24.
//  Copyright © 2019 wushhhhhh. All rights reserved.
//

import UIKit
import SnapKit

class ViewController: UITableViewController {
    private let chatInputAccessoryView: CustomInputView = {
        let view = CustomInputView(frame: CGRect.zero, inputViewStyle: UIInputView.Style.default)
        return view
    }()
    private let chatInputAccessoryViewController = UIInputViewController()
    override var inputAccessoryViewController: UIInputViewController? {
        chatInputAccessoryViewController.inputView = chatInputAccessoryView
        return chatInputAccessoryViewController
    }
    override var canBecomeFirstResponder: Bool {
        return true
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        initView()
        
        tableView.rowHeight = UITableView.automaticDimension
        tableView.keyboardDismissMode = .interactive
        tableView.backgroundColor = .colorEBEDEE
    }


}

extension ViewController {
    func initView() {
        
//        self.view.addSubview(chatInputAccessoryView)
//        chatInputAccessoryView.snp.makeConstraints { (make) in
//            make.width.equalToSuperview()
//            make.bottom.equalTo(self.view.safeAreaLayoutGuide.snp.bottom)
//        }
        
    }
}
