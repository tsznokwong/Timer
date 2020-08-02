//
//  ViewController.swift
//  Timer
//
//  Created by Tsznok Wong on 24/12/14.
//  Copyright (c) 2014 Tsznok Wong. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var timerCnt = 0
    var timerRun = false
    var timer = Timer()
    @IBOutlet weak var timerLabel: UILabel!
    
    @objc func Cnt(){
        timerCnt += 1
        timerLabel.text = "\(timerCnt)"
    }
    
    
    @IBAction func startButton(sender: UIButton) {
        if timerRun == false{
            timer = Timer.scheduledTimer(withTimeInterval: 1, repeats: true) { (_) in
                self.Cnt()
            }
            timerRun = true
        }
        
    }
    
    @IBAction func stopButton(sender: UIButton) {
        if timerRun == true{
            timer.invalidate()
            timerRun = false
        }
        
    }
    
    @IBAction func resetButton(sender: UIButton) {
        timerCnt = 0
        timerLabel.text = "\(timerCnt)"
    }
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

