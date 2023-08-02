//
//  ExtemeMVC.swift
//  Fittness test1
//
//  Created by DPI Student 051 on 7/31/23.
//

import UIKit

class ExtemeMVC: UIViewController {

    @IBOutlet var label: UILabel!
   
    var fromExtremeVC: String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    label.text = "Daily Reps Goal  \(fromExtremeVC) "
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
