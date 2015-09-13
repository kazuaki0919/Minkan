//
//  ChoiceViewController.swift
//  Warikan
//
//  Created by 並木一晃 on 2015/07/08.
//  Copyright (c) 2015年 並木一晃. All rights reserved.
//

import UIKit

class ChoiceViewController: UIViewController {
    
    var peoplenumber:Int! //人数
    var totalnumber:Int!  //総額
    
    var choicenumber:Int!  //選択ボタンの数
    

    override func viewDidLoad() {
        super.viewDidLoad()
        choicenumber = 0
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
        var resultViewController = segue.destinationViewController as! ResultViewController
        
        resultViewController.peoplenumber = self.peoplenumber
        resultViewController.totalnumber = self.totalnumber
        NSLog("変数choicenumberの値")
        
        if(segue.identifier=="normal"){
            self.choicenumber = 1
            resultViewController.choicenumber = self.choicenumber
            
            
            NSLog("は%dだった",self.choicenumber)
        }
    
        if(segue.identifier=="ten"){
            self.choicenumber = 2
            resultViewController.choicenumber = self.choicenumber
            
            NSLog("は%dだった",self.choicenumber)
        }
        
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
