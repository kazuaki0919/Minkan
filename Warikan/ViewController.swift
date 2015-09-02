//
//  ViewController.swift
//  Warikan
//
//  Created by 並木一晃 on 2015/05/24.
//  Copyright (c) 2015年 並木一晃. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var label1:UILabel!
    var moneynumber:Int!
    
    override func viewWillAppear(animated: Bool) {
        moneynumber = 0
        label1.text = String(moneynumber)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
    }
    
    @IBAction func bt0(){
        moneynumber=moneynumber*10+0
        label1.text=String(moneynumber)
    }
    
    @IBAction func bt1(){
        moneynumber=moneynumber*10+1
        label1.text=String(moneynumber)
    }
    
    @IBAction func bt2(){
        moneynumber=moneynumber*10+2
        label1.text=String(moneynumber)
    }
    
    @IBAction func bt3(){
        moneynumber=moneynumber*10+3
        label1.text=String(moneynumber)
    }
    
    @IBAction func bt4(){
        moneynumber=moneynumber*10+4
        label1.text=String(moneynumber)
    }
    
    @IBAction func bt5(){
        moneynumber=moneynumber*10+5
        label1.text=String(moneynumber)
    }
    
    @IBAction func bt6(){
        moneynumber=moneynumber*10+6
        label1.text=String(moneynumber)
    }
    
    @IBAction func bt7(){
        moneynumber=moneynumber*10+7
        label1.text=String(moneynumber)
    }
    
    @IBAction func bt8(){
        moneynumber=moneynumber*10+8
        label1.text=String(moneynumber)
    }
    
    @IBAction func bt9(){
        moneynumber=moneynumber*10+9
        label1.text=String(moneynumber)
    }
    
    @IBAction func bt00(){
        moneynumber=moneynumber*100+0
        label1.text=String(moneynumber)
    }
    
    @IBAction func clear(){
        moneynumber=moneynumber*0
        label1.text=String(moneynumber)
    }
    
    @IBAction func enter(){
        NSLog("変数numberの値は、%dだった",moneynumber)
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        var nextViewController=segue.destinationViewController as! NextViewController
        
        nextViewController.feelnumber = self.moneynumber
    }

    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    


}




