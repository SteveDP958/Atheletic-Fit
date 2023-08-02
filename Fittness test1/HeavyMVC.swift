//
//  HeavyMVC.swift
//  Fittness test1
//
//  Created by DPI Student 051 on 7/31/23.
//

import UIKit

class HeavyMVC: UIViewController {

    @IBOutlet var label: UILabel!
    
    var fromHeaveyVC: String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        label.text = "Daily Miles Goal  \(fromHeaveyVC) "
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
