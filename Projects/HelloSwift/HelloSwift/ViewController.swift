//
//  ViewController.swift
//  HelloSwift
//
//  Created by Nimesh Neema on 16/01/25.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var myButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        UIView.animate(withDuration: 1.5,
                       animations: {
            () -> () in
            self.myButton.frame.origin.y += 100
        },
                       completion: {
            (finished:Bool) -> () in
            print("finished: \(finished)")
        })
    }
}

