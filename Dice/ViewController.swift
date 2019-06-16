//
//  ViewController.swift
//  Dice
//
//  Created by Soohan Lee on 2019/06/16.
//  Copyright © 2019 Soohan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var firstGroove: UIView!
    @IBOutlet var secondGroove: UIView!
    @IBOutlet var thirdGroove: UIView!
    @IBOutlet var forthGroove: UIView!
    @IBOutlet var fifthGroove: UIView!
    @IBOutlet var sixthGroove: UIView!
    @IBOutlet var seventhGroove: UIView!
    
    var grooves: [UIView] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        grooves.append(firstGroove)
        grooves.append(secondGroove)
        grooves.append(thirdGroove)
        grooves.append(forthGroove)
        grooves.append(fifthGroove)
        grooves.append(sixthGroove)
        grooves.append(seventhGroove)
        
        for groove in grooves {
            groove.alpha = 0
        }
    }
    
    @IBAction func roll(_ sender: Any) {
        
        for groove in grooves {
            groove.alpha = 0
        }
        
        let number = Int(arc4random_uniform(UInt32(6))) + 1
        print(number)
        
        switch number {
        case 1:
            forthGroove.alpha = 1
        case 2:
            firstGroove.alpha = 1
            seventhGroove.alpha = 1
        case 3:
            firstGroove.alpha = 1
            forthGroove.alpha = 1
            seventhGroove.alpha = 1
        case 4:
            firstGroove.alpha = 1
            secondGroove.alpha = 1
            sixthGroove.alpha = 1
            seventhGroove.alpha = 1
        case 5:
            firstGroove.alpha = 1
            secondGroove.alpha = 1
            forthGroove.alpha = 1
            sixthGroove.alpha = 1
            seventhGroove.alpha = 1
        case 6:
            firstGroove.alpha = 1
            secondGroove.alpha = 1
            thirdGroove.alpha = 1
            fifthGroove.alpha = 1
            sixthGroove.alpha = 1
            seventhGroove.alpha = 1
        default:
            print("error")
        }
    }
    
}

