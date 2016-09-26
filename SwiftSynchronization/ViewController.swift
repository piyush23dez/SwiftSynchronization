//
//  ViewController.swift
//  SwiftSynchronization
//
//  Created by Sharma, Piyush on 9/26/16.
//  Copyright © 2016 Sharma, Piyush. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var list = [String]()
    let serialQueue = DispatchQueue(label: "lock")
        
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Example1
        serialQueue.sync {
            list.append("Hello i have been locked in this gcd block")
        }
        
        //Example2
        Synchronizer.lock(object: list) {
            list.append("Hello i have been locked in this closure")
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

