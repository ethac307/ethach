//
//  ViewController.swift
//  Egg Timer
//
//  Created by student on 7/1/19.
//  Copyright © 2019 student. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var clock = 210
    var timer = Timer()
    var isRunning = false
    
    @objc func runTimer() {
        if clock > 0 {
            clock -= 1
            clockLabel.text = String(clock)
        } else {
            timer.invalidate()
            isRunning = false
        }
    }
    @IBOutlet weak var clockLabel: UILabel!
    
    @IBAction func pause(_ sender: Any) {
        if isRunning {
            timer.invalidate()
            isRunning = false
        }
    }
    @IBAction func play(_ sender: Any) {
        if !isRunning {
            timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(ViewController.runTimer), userInfo: nil, repeats: true)
            isRunning = true
        }
    }
    @IBAction func reset(_ sender: Any) {
        clock = 210
        clockLabel.text = String(clock)
    }
    @IBAction func minusTen(_ sender: Any) {
        if clock >= 10 {
            clock -= 10
            clockLabel.text = String(clock)
        }
    }
    @IBAction func plusTen(_ sender: Any) {
        clock += 10
        clockLabel.text = String(clock)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        clockLabel.text = String(clock)
        // Do any additional setup after loading the view, typically from a nib.
    }


}

