//
//  FirstViewController.swift
//  Peter_Lesson8_MultiPerformSegue
//
//  Created by Kwan Ho Leung on 3/4/2022.
//

import UIKit

class FirstViewController: UIViewController {
    
    @IBOutlet weak var button1: UIButton!
    @IBOutlet weak var button2: UIButton!
    @IBOutlet weak var button3: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    //sender change from any to UIButton
    @IBAction func showNameButtonTap(_ sender: UIButton) {
        var name = ""
        switch sender{
        case button1: name = "imola"
        case button2: name = "Jerez"
        case button3: name = "Monaco"
        default: break
        }
        performSegue(withIdentifier: "firstToSecond", sender: name)
    }
    
    //added sender: Any?
    //SecondViewController added (coder: coder)
    @IBSegueAction func sendName(_ coder: NSCoder, sender: Any?) -> SecondViewController? {
        let controller = SecondViewController(coder: coder)
        controller?.name = sender as? String ?? "empty"
        return controller
    }
}

