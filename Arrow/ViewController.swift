//
//  ViewController.swift
//  Arrow
//
//  Created by oyoung on 15/12/23.
//  Copyright © 2015年 oyoung. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        let arrow = ArrowView(frame: CGRect(x: 0, y: 0, width: 100, height: 100))
        arrow.center = view.center
        arrow.cornerRadius = 6
        arrow.arrowDirection = ArrowDirection.Left
        arrow.arrowOffset = arrow.arrowOffsetValiden(offset: 10)
        arrow.backColor = UIColor.cyanColor()
        view.addSubview(arrow)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

