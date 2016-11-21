//
//  ViewController.swift
//  Cronometro
//
//  Created by Luis Enrique Tierrafria Rodriguez on 9/14/16.
//  Copyright © 2016 Luis Enrique Tierrafria Rodriguez. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var time: UILabel!
    
    var timer = NSTimer()
    var count = 0
    
    @IBAction func pause(sender: AnyObject) {
        timer.invalidate()
    }
    
    
    @IBAction func stop(sender: AnyObject) {
        timer.invalidate()
        time.text = "0"
        count = 0
    }
    
    func updateTime() {
        count+=1
        time.text = "\(count)"
        
    }
    
    @IBAction func play(sender: AnyObject) {
        timer = NSTimer.scheduledTimerWithTimeInterval(1, target: self, selector: #selector(ViewController.updateTime), userInfo: nil, repeats: true)    }
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

