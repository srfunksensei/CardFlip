//
//  ViewController.swift
//  CardFlip
//
//  Created by MB on 15/09/2020.
//  Copyright © 2020 MB. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var containerView: UIView!

    lazy var backView: UIView = {
        return createView(backgroundColor: .gray)
    }()
    
    lazy var frontView: UIView = {
        return createView(backgroundColor: .systemYellow)
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func flipView(_ sender: Any) {
    }
    
    fileprivate func createView(backgroundColor: UIColor?) -> UIView {
        let view = UIView()
        view.backgroundColor = backgroundColor
        return view
    }
}

