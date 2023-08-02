//
//  ExteameVC.swift
//  Fittness test1
//
//  Created by DPI Student 051 on 7/30/23.
//

import UIKit

class ExteameVC: UIViewController {
    
    @IBOutlet var mileCount: UILabel!
    
    @IBOutlet var setCount: UILabel!
    
    @IBOutlet var stepper3: UIStepper!
    
    @IBOutlet var stepper4: UIStepper!
    
    
    var stepIncrementor = 5000
    
    override func viewDidLoad() {
        super.viewDidLoad()
        stepper3.maximumValue = 15
        stepper3.minimumValue = 5
        stepper4.minimumValue = 2
        stepper4.maximumValue = 15
                // Do any additional setup after loading the view, typically from a nib
    }
    
    @IBAction func stepper3(_ sender: UIStepper) {
        setCount.text = "\(Int(sender.value))"
        
    }
    @IBAction func stepper4(_ sender: UIStepper) {
        mileCount.text = "\(Int(sender.value))"
    }
    override func prepare(for segue:                                UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "ExtremeVC to ExtremeMVC"                               {                          //road
            let destVC = segue.destination as?                              ExtemeMVC           // destination
            if setCount.text != nil{
                destVC?.fromExtremeVC =                                         setCount.text!
            }//Data
        }
        
    }
    
    @IBAction func Confirm(_ sender: Any) {
        performSegue(withIdentifier: "ExtremeVC to ExtremeMVC", sender: nil)
    }
    
    
}

