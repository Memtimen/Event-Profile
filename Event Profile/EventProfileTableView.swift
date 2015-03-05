//
//  EventProfileTableView.swift
//  Event Profile
//
//  Created by Maimaitiming Abudukadier on 3/2/15.
//  Copyright (c) 2015 Maimaitiming Abudukadier. All rights reserved.
//

import UIKit

protocol tableViewDidScroll {
    func tablviewDidScroll(offSetY: CGFloat)
}

class EventProfileTableView: UITableViewController {
    var tableViewDidScrollDelegate : tableViewDidScroll?
    var isFirstTime = true
    override func viewDidLoad() {
        super.viewDidLoad()
        self.tableView.contentInset = UIEdgeInsetsMake(CGRectGetWidth(self.tableView.frame)*0.8, 0, 0, 0)
    }
    
    override func scrollViewDidScroll(scrollView: UIScrollView) {
        tableViewDidScrollDelegate?.tablviewDidScroll(scrollView.contentOffset.y)
    }

}

@IBDesignable
class RoundButton : UIButton {
    override func didMoveToSuperview() {
        self.layer.cornerRadius = CGRectGetHeight(self.frame)/2
        self.layer.borderColor = UIColor(red: 0/255.0, green: 190/255.0, blue: 130/255.0, alpha: 1).CGColor
        self.layer.borderWidth = 1
    }
}

@IBDesignable
class RoundGrayButton : UIButton {
    override func didMoveToSuperview() {
        self.layer.cornerRadius = CGRectGetHeight(self.frame)/2
        self.layer.borderColor = UIColor(white: 0, alpha: 0.1).CGColor
        self.layer.borderWidth = 0.5
    }
}

