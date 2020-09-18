//
//  ViewController.swift
//  TrafficLights
//
//  Created by Сергей Ткаченко on 17.09.2020.
//  Copyright © 2020 Sergey Tkachenko. All rights reserved.
//

import UIKit

enum CurrentLight {
    case red, yellow, green
}

class ViewController: UIViewController {

    @IBOutlet var redLight: UIView!
    @IBOutlet var yellowLight: UIView!
    @IBOutlet var greenLight: UIView!
    
    @IBOutlet var switchButton: UIButton!
    
    private var currentLight = CurrentLight.red
    
    private let lightOn: CGFloat = 1
    private let lightOff: CGFloat = 0.3
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        switchButton.layer.cornerRadius = switchButton.bounds.height / 2
        
        redLight.alpha = lightOff
        yellowLight.alpha = lightOff
        greenLight.alpha = lightOff
        
    }
    
    override func viewWillLayoutSubviews() {
         
        redLight.layer.cornerRadius = redLight.bounds.width / 2
        yellowLight.layer.cornerRadius = yellowLight.bounds.width / 2
        greenLight.layer.cornerRadius = greenLight.bounds.width / 2
        
    }

    @IBAction func pressOnButton() {
        switchButton.setTitle("NEXT!", for: .normal)
        
        switch currentLight {
        case .red:
            greenLight.alpha = lightOff
            redLight.alpha = lightOn
            currentLight = .yellow
        case .yellow:
            redLight.alpha = lightOff
            yellowLight.alpha = lightOn
            currentLight = .green
        case .green:
            yellowLight.alpha = lightOff
            greenLight.alpha = lightOn
            currentLight = .red
        }
    }

}

