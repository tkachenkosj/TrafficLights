//
//  ViewController.swift
//  TrafficLights
//
//  Created by Сергей Ткаченко on 17.09.2020.
//  Copyright © 2020 Sergey Tkachenko. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var redLight: UIView!
    @IBOutlet var yellowLight: UIView!
    @IBOutlet var greenLight: UIView!
    @IBOutlet var switchButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        redLight.alpha = 0.3
        yellowLight.alpha = 0.3
        greenLight.alpha = 0.3
        redLight.layer.cornerRadius = 75
        yellowLight.layer.cornerRadius = 75
        greenLight.layer.cornerRadius = 75
        switchButton.layer.cornerRadius = 30
        
    }

    @IBAction func switchButtonPressed() {
        if redLight.alpha == yellowLight.alpha && yellowLight.alpha == greenLight.alpha{
            redLight.alpha = 1
            switchButton.setTitle("SWITCH!", for: .normal)
        } else if redLight.alpha == 1 {
            redLight.alpha = 0.3
            yellowLight.alpha = 1
        } else if yellowLight.alpha == 1 {
            yellowLight.alpha = 0.3
            greenLight.alpha = 1
        } else if greenLight.alpha == 1 {
            greenLight.alpha = 0.3
            redLight.alpha = 1
        }
    }
    
}

