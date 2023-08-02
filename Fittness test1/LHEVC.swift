//
//  LHEVC.swift
//  Fittness test1
//
//  Created by DPI Student 051 on 7/25/23.
//

import UIKit

class LHEVC: UIViewController {

    @IBOutlet var label: UILabel!
    
    var fromLogin: String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        label.text = "Hello \(fromLogin) choose a plan"
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}//end LHEVC
