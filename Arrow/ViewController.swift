//
//  ViewController.swift
//  Arrow
//
//  Created by oyoung on 15/12/23.
//  Copyright © 2015年 oyoung. All rights reserved.
//

import UIKit

class ViewController: UIViewController, ArrowMenuDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        let arrow = ArrowView(frame: CGRect(x: 0, y: 0, width: 100, height: 100))
        arrow.center = view.center
        arrow.cornerRadius = 6
        arrow.arrowDirection = ArrowDirection.Up
        arrow.arrowOffset = arrow.arrowOffsetValiden(offset: 10)
        arrow.backColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.8)
        arrow.contentView = UIView(frame: CGRect(x: 0, y: 0, width: 95, height: 100))
        arrow.contentView?.backgroundColor = UIColor.cyanColor()
        arrow.hidden = true
        
        let menu = ArrowMenu(frame: CGRect(x: 0, y: 0, width: 114, height: 154), delegate: self)
        menu.center = view.center
        menu.cornerRadius = 6
        menu.arrowDirection = ArrowDirection.Up
        menu.arrowOffset = 5
        menu.backColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.5)
        menu.contentInset = UIEdgeInsets(top: 0, left: 0, bottom: 6, right: 0)
        menu.contentView?.backgroundColor = UIColor.clearColor()
        menu.contentView?.layer.cornerRadius = 6

        view.addSubview(arrow)
        view.addSubview(menu)
    }
    
    func arrowMenu(menu: ArrowMenu, canBeSelectedAtRow row: Int, colunm: Int) -> Bool {
        return true
    }
    
    func arrowMenu(menu: ArrowMenu, didSelectAtRow row: Int, colunm: Int) {
        print("按下了第\(row)行，第\(colunm)列")
    }
    
    func numberOfColunm(menu: ArrowMenu) -> Int {
        return 1
    }
    
    func arrowMenu(menu: ArrowMenu, numnerOfRowInColunm: Int) -> Int {
        return 4
    }
    
    
    func arrowMenu(menu: ArrowMenu, widthForColunm colunm: Int) -> CGFloat {
        return 114
    }
    
    func arrowMenu(menu: ArrowMenu, heightForRow row: Int, colunm: Int) -> CGFloat {
        return 37
    }
    
    func arrowMenu(menu: ArrowMenu, insetForRow: Int, colunm: Int) -> UIEdgeInsets {
        return UIEdgeInsets(top: 6, left: 6, bottom: 6, right: 6)
    }
    
    func arrowMenu(menu: ArrowMenu, itemForRow row: Int, colunm: Int) -> MenuItem {
        var item = menu[row, colunm]
        if item == nil
        {
            item = MenuItem()
            item?.backgroundColor = UIColor.clearColor()
            item?.textAlignment = .Center
            item?.textColor = UIColor.whiteColor()
            item?.font = UIFont.systemFontOfSize(12)
            item?.text = "按时间排序"
        }
        
        return item!
    }
    
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }


}

