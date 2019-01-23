//
//  ViewController.swift
//  Test
//
//  Created by Lohen Yumnam on 22/01/19.
//  Copyright © 2019 Lohen Yumnam. All rights reserved.
//

import UIKit
import MessageViewController

class ViewController: MessageViewController {
    let tableView = UITableView()

    override func viewDidLoad() {
        super.viewDidLoad()
        setup(scrollView: tableView)
        // Change the appearance of the text view and its content
        messageView.inset = UIEdgeInsets(top: 16, left: 16, bottom: 16, right: 16)
        messageView.textView.placeholderText = "New message..."
        messageView.textView.placeholderTextColor = .lightGray
        messageView.font = .systemFont(ofSize: 17)
        messageView.backgroundColor = .yellow
        self.borderColor = .red
        
        // Setup the button using text or an icon
        messageView.setButton(title: "Send", for: .normal, position: .right)
        messageView.rightButtonTint = .blue
        
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "Cell")
        tableView.dataSource = self
        messageView.layoutIfNeeded()
        tableView.layoutIfNeeded()
        self.view.layoutIfNeeded()
    }
}

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        cell.backgroundColor = .green
        return cell
    }
}




