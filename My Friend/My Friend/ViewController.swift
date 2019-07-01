//
//  ViewController.swift
//  My Friend
//
//  Created by student on 7/1/19.
//  Copyright © 2019 student. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
 
    
    @IBOutlet weak var hiBye: UILabel!
    
    @IBAction func hi(_ sender: Any) {
        hiBye.text = String("Hi, how are you?")
    }

    @IBAction func bye(_ sender: Any) {
        hiBye.text = String("Bye, see you later!")
    }
    @IBAction func reset(_ sender: Any) {
        hiBye.text = String("I'm your friend")
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        hiBye.text = String("I'm your friend")
        // Do any additional setup after loading the view, typically from a nib.
    }


}

