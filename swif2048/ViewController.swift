//
//  ViewController.swift
//  swif2048
//
//  Created by 段瑞权 on 15/9/27.
//  Copyright © 2015年 胡孟虎. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    
    
    @IBAction func buttonClick(sender:UIButton)
    {
        let alerview = UIAlertView()
        alerview.title = "开始swift"
        alerview.message = "game start"
        alerview.addButtonWithTitle("Read go")
        alerview.addButtonWithTitle("call")
        alerview.show()
        alerview.delegate = self;
    }
    
    func alertView(alertView: UIAlertView, didDismissWithButtonIndex buttonIndex: Int)
    {
        if buttonIndex == 1{
            print("alertView")
        }
        else{
           print("haha")
        }
    }
    
}

