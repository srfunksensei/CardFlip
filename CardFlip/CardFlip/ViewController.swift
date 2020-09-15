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
    
    enum ViewType {
        case front, back
    }
    
    private var currentView: ViewType = .back
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        addViewTo(view: frontView, to: containerView)
        addViewTo(view: backView, to: containerView)
    }

    @IBAction func flipView(_ sender: Any) {
        switch currentView {
        case .front:
            UIView.transition(from: frontView, to: backView, duration: 1.0, options: [.transitionFlipFromRight, .showHideTransitionViews], completion: {(success) in
                self.currentView = .back
                })
        case .back:
            UIView.transition(from: backView, to: frontView, duration: 1.0, options: [.transitionFlipFromLeft, .showHideTransitionViews], completion: {(success) in
            self.currentView = .front
            })
        }
    }
    
    fileprivate func createView(backgroundColor: UIColor?) -> UIView {
        let view = UIView()
        view.backgroundColor = backgroundColor
        return view
    }
    
    fileprivate func addViewTo(view: UIView, to: UIView) {
        view.frame.size = to.frame.size
        view.frame.origin = CGPoint(x: 0, y: 0)
        to.addSubview(view)
    }
}

