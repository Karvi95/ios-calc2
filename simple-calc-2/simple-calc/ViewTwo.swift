//
//  ViewTwo.swift
//  simple-calc
//
//  Created by iGuest on 4/25/16.
//  Copyright © 2016 karvi90. All rights reserved.
//

import UIKit

class ViewTwo: UIViewController {
    

    var EquationsHistory : [String]!
    
    @IBOutlet weak var calcHistory: UIScrollView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        calcHistory.contentSize = CGSizeMake(200, 2500)
        
        var int: CGFloat = 30
        for equation in EquationsHistory {
            let label = UILabel(frame: CGRectMake(40, 100, 300, 21))
            label.text = equation
            label.textAlignment = NSTextAlignment.Left
            label.textColor = UIColor.whiteColor()
            label.center = CGPointMake(182, int)
            int = int + 30
            
            self.calcHistory.addSubview(label)
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
