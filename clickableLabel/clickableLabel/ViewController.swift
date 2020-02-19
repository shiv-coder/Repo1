//
//  ViewController.swift
//  clickableLabel
//
//  Created by Shivali on 2020-01-21.
//  Copyright © 2020 me. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
       
        
        
    let userName = UILabel.init()
        userName.frame = CGRect(x: 10, y: 40, width: 200, height: 100)
        userName.text = "Swift tutorial is a good way to practice more about programming.Swift tutorial is a good way to practice more about programming.Swift tutorial is a good way to practice more about programming.Swift tutorial is a good way to practice more about programming"
        userName.font = UIFont(name: "verdana", size: 20.0)
        userName.textAlignment = .left
        userName.textColor = .blue
        userName.backgroundColor = .red
        userName.numberOfLines = 0
        //userName.lineBreakMode = .byTruncatingHead
        userName.isHighlighted = true
        userName.highlightedTextColor = UIColor.blue






        userName.sizeToFit()
        self.view.addSubview(userName)


        //to make UILable clickable

        userName.isUserInteractionEnabled = true

        let tapgesture = UITapGestureRecognizer.init(target: self, action: #selector(clickLabel))

        tapgesture.numberOfTapsRequired = 1
        userName.addGestureRecognizer(tapgesture)

    }
    @objc func clickLabel() {
        print("userName UILabel gets clicked")
    }


}

