//
//  HeaveyVC.swift
//  Fittness test1
//
//  Created by DPI Student 051 on 7/29/23.
//

import UIKit

class HeaveyVC: UIViewController {

    @IBOutlet var countLabel2: UILabel!
    
    @IBOutlet var stepper2: UIStepper!
    
    var stepIncrementor = 1
    
    override func viewDidLoad() {
            super.viewDidLoad()
        stepper2.maximumValue = 10
        stepper2.minimumValue = 1
            // Do any additional setup after loading the view, typically from a nib
        }
        
   @IBAction func stepper2(_ sender: UIStepper) {
            countLabel2.text = "\(Int(sender.value)*stepIncrementor)"
        }
    override func prepare(for segue:                                UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "HeaveyVC to HeavyMVC"                               {                          //road
            let destVC = segue.destination as?                              HeavyMVC           // destination
            if countLabel2.text != nil{
                destVC?.fromHeaveyVC =                                     countLabel2.text!
            }//Data
        }
        
    }
    
    @IBAction func Confirm(_ sender: Any) {
        performSegue(withIdentifier: "HeaveyVC to HeavyMVC", sender: nil)
    }
    
    
}

