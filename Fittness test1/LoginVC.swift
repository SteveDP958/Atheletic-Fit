//
//  LoginVC.swift
//  Fittness test1
//
//  Created by DPI Student 051 on 7/25/23.
//

import UIKit

class LoginVC: UIViewController {
    
    @IBOutlet var userText: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }// End of viewDidLoad()
    
    override func prepare(for segue:                                UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "Login to LHE"                               {                          //road
            let destVC = segue.destination as?                              LHEVC           // destination
            if userText.text != nil{
                destVC?.fromLogin =                                     userText.text!
            }//Data
        }
        
    }
    
    @IBAction func Start(_ sender: Any) {
        performSegue(withIdentifier: "Login to LHE", sender: nil)
    }
    
    
}
    

