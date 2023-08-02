//
//  LightVC.swift
//  Fittness test1
//
//  Created by DPI Student 051 on 7/26/23.
//

import UIKit

class LightVC: UIViewController {
    
    @IBOutlet var countLabel: UILabel!
    
    @IBOutlet var stepper: UIStepper!
    
    var stepIncrementor = 500
    
    override func viewDidLoad() {
        super.viewDidLoad()
        stepper.maximumValue = 40
        stepper.minimumValue = 4
        // Do any additional setup after loading the view, typically from a nib
    }
    
    @IBAction func stepper(_ sender: UIStepper) {
        countLabel.text = "\(Int(sender.value) * stepIncrementor)"
    }
    
    override func prepare(for segue:                                UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "LightVC to LightM"                               {                          //road
            let destVC = segue.destination as?                              LightM           // destination
            if countLabel.text != nil{
                destVC?.fromLightVC =                                     countLabel.text!
            }//Data
        }
        
    }
    
    @IBAction func Confirm(_ sender: Any) {
        performSegue(withIdentifier: "LightVC to LightM", sender: nil)
    }
    
    
}

