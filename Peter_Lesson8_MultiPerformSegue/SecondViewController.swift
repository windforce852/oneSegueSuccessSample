//
//  SecondViewController.swift
//  Peter_Lesson8_MultiPerformSegue
//
//  Created by Kwan Ho Leung on 3/4/2022.
//

import UIKit

class SecondViewController: UIViewController {

    var name:String = "Default"
        
    @IBOutlet weak var trackLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        trackLabel.text = name
    }
}
