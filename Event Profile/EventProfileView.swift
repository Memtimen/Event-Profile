//
//  ViewController.swift
//  Event Profile
//
//  Created by Maimaitiming Abudukadier on 3/2/15.
//  Copyright (c) 2015 Maimaitiming Abudukadier. All rights reserved.
//

import UIKit

class EventProfileView: UIViewController,tableViewDidScroll {
    @IBOutlet weak var constraintForCoverView: NSLayoutConstraint!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        var TC = self.childViewControllers[0] as? EventProfileTableView
        TC?.tableViewDidScrollDelegate = self
        TC?.tableView.contentOffset.y = -CGRectGetWidth(self.view.frame)*0.6
        self.navigationController?.setNavigationBarHidden(true, animated: true)
        self.navigationController?.interactivePopGestureRecognizer
    }

    
    func tablviewDidScroll(offSetY: CGFloat) {
        if offSetY >= -300 {
//            constraintForCoverView.constant = -offSetY - CGRectGetWidth(self.view.frame)*0.8
        }else{
//            constraintForCoverView.constant = 0
        }
        println("\(offSetY)")
    }
    
    override func preferredStatusBarStyle() -> UIStatusBarStyle {
        return UIStatusBarStyle.LightContent
    }
    @IBAction func Back(sender: AnyObject) {
        self.navigationController?.popViewControllerAnimated(true)
    }
}



@IBDesignable
class Gradient: UIView {
    
    var layerUpper = CAGradientLayer()
    
    override func layoutSubviews() {
        super.layoutSubviews()
        layerUpper.colors = [UIColor(red: 32/255.0, green: 34/255.0, blue: 35/255.0, alpha: 1).CGColor, UIColor(white: 0, alpha: 0.3).CGColor]
        layerUpper.locations = [0,0.8]
        layerUpper.startPoint = CGPointMake(0, 0.9)
        layerUpper.endPoint = CGPointMake(0, 0)
        layerUpper.contentsGravity = kCAGravityResize
        layerUpper.frame = self.layer.bounds
        self.layer.addSublayer(layerUpper)
        self.backgroundColor = UIColor.clearColor()
    }
}

@IBDesignable
class ViewWithBoarder:UIView {
    override func layoutSubviews() {
        self.layer.borderWidth = 0.5
        self.layer.borderColor = UIColor(white: 0, alpha: 0.2).CGColor
    }
}