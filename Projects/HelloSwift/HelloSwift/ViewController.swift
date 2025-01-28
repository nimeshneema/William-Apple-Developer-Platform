//
//  ViewController.swift
//  HelloSwift
//
//  Created by Nimesh Neema on 16/01/25.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var myButton: UIButton!
    @IBOutlet weak var aSwitch: UISwitch!

        // Name: viewDidLoad()
    override func viewDidLoad() {
        super.viewDidLoad()
            // Do any additional setup after loading the view.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
            // Since in the interface file (`Main.storyboard`), the switch is in the On state, it will be turned off with animatation when this view appears on the device screen.
        if (aSwitch.isOn) {
            aSwitch.setOn(false, animated: true)
        } else {
                // this part of condition will never execute.
            aSwitch.setOn(true, animated: true)
        }
        
//        UIView.animate(withDuration: 1.5,
//                       animations: {
//            () -> () in
//            self.myButton.frame.origin.y += 100
//        },
//                       completion: {
//            (finished:Bool) -> () in
//            print("finished: \(finished)")
//        })
    }
 
        // The switch will turn off without animation but will turn on with animation.
    @IBAction func pressMe(_ sender: Any) {
        if (aSwitch.isOn) {
            aSwitch.setOn(false, animated: false)
        } else {
                // this part of condition will not execute.
            aSwitch.setOn(true, animated: true)
        }
    }
}
