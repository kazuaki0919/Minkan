//
//  SecondViewController.swift
//  Warikan
//
//  Created by 並木一晃 on 2015/05/30.
//  Copyright (c) 2015年 並木一晃. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    
    @IBOutlet var label2:UILabel!
    var number:Int=0

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func two(){
        number=number/2
        label2.text=String(number)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
