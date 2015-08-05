//
//  KextukaViewController.swift
//  Warikan
//
//  Created by 並木一晃 on 2015/06/03.
//  Copyright (c) 2015年 並木一晃. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {
    
    @IBOutlet var label3:UILabel!
    
    @IBOutlet var label5:UILabel!
    
    var peoplenumber:Int! //人数
    var totalnumber:Int!  //総額
    
    var oneresultnumber:Int!  //一の位の結果
    var resultnumber:Int!  //結果
    var amari:Int! //端数
    
    
    //割る単位　１：１円単位/２：１０円単位
    var choicenumber:Int!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        println(choicenumber)
        
        if choicenumber == 1{
        resultnumber = totalnumber/peoplenumber
        label3.text=String(resultnumber)
        amari = totalnumber%peoplenumber
        label5.text=String(amari)
        }
        
        if choicenumber == 2{
        oneresultnumber = totalnumber/peoplenumber
        resultnumber = oneresultnumber-oneresultnumber%10
        label3.text=String(resultnumber)
        amari = totalnumber-resultnumber*peoplenumber
        label5.text=String(amari)
        }
        
        
    }

    
    @IBAction func top(sender: UIButton){
                self.navigationController?.popToRootViewControllerAnimated(true)
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
