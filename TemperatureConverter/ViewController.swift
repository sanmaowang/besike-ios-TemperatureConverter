//
//  ViewController.swift
//  TemperatureConverter
//
//  Created by Sanmao on 14-10-26.
//  Copyright (c) 2014年 Sanmao. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var celsiusLabel: UILabel!
    @IBOutlet weak var fahrenheitLabel: UILabel!
    @IBOutlet weak var kelvinLabel: UILabel!
    
    @IBOutlet weak var temperatureSlider: UISlider!
    
    @IBAction func temperatureSliderChanged(sender: UISlider){
        self.updateTemperatureDisplays()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
//    override func viewWillLayoutSubviews() {
//        super.viewWillLayoutSubviews()
//        let screen = UIScreen.mainScreen()
//        println("screen fixed bounds: \(screen.fixedCoordinateSpace.bounds)")
//        // Since ios8, this is the size of the screen in its current orientation
//        println("screen bounds: \(screen.bounds)")
//        
//        println("top layout guide: \(topLayoutGuide.length)")
//        
//        titleLabel.frame = CGRectMake(16, 16, screen.bounds.width-32, 21)
//    }
    func updateTemperatureDisplays(){
        var c = self.temperatureSlider.value
        var f = (c * 9/5) + 32
        var k = c + 273.15
//        self.celsiusLabel.text = "\(c)C"
        self.celsiusLabel.text = String(format: "%.1fC", arguments: [c])
        self.fahrenheitLabel.text = String(format: "%.1fF", arguments: [f])
        self.kelvinLabel.text = String(format:"%.2fK",arguments:[k])
    }


}

