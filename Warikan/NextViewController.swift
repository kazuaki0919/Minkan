//
//  NectViewController.swift
//  
//
//  Created by 並木一晃 on 2015/05/24.
//
//

import UIKit

class NextViewController: UIViewController {
    
    @IBOutlet var label2:UILabel!
    var number:Int = 0
    
    @IBOutlet var label4:UILabel!
    var feelnumber:Int!
    
    override func viewWillAppear(animated: Bool) {
        number = 0
        label2.text = String(number)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        NSLog("変数numberの値はviewDidLoadで、%dだった",self.feelnumber)
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func two(){
        number=number*10+2
        label2.text=String(number)
    }
    
    @IBAction func three(){
        number=number*10+3
        label2.text=String(number)
    }
    
    @IBAction func four(){
        number=number*10+4
        label2.text=String(number)
    }
    
    @IBAction func five(){
        number=number*10+5
        label2.text=String(number)
    }
    
    @IBAction func six(){
        number=number*10+6
        label2.text=String(number)
    }
    
    @IBAction func seven(){
        number=number*10+7
        label2.text=String(number)
    }
    
    @IBAction func eight(){
        number=number*10+8
        label2.text=String(number)
    }
    
    @IBAction func nine(){
        number=number*10+9
        label2.text=String(number)
    }
    
    @IBAction func ten(){
        number=number*100+10
        label2.text=String(number)
    }
    
    @IBAction func clear(){
        number=number*0
        label2.text=String(number)
    }
    
    @IBAction func enter(){

    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
        var choiceViewController=segue.destinationViewController as! ChoiceViewController
        
        choiceViewController.peoplenumber = self.number
        choiceViewController.totalnumber = self.feelnumber

        NSLog("変数numberの値は、%dだった",self.feelnumber)
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
