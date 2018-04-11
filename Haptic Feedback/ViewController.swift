//
//  ViewController.swift
//  Haptic Feedback
//
//  Created by Kavish joshi on 10/04/18.
//  Copyright © 2018 Kavish joshi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    //notification feedback
    let generator = UINotificationFeedbackGenerator()

    //Impact feedback generator
    let impactFeedbackGenerator: (
        light: UIImpactFeedbackGenerator,
        medium: UIImpactFeedbackGenerator,
        heavy: UIImpactFeedbackGenerator) = (
            UIImpactFeedbackGenerator(style: .light),
            UIImpactFeedbackGenerator(style: .medium),
            UIImpactFeedbackGenerator(style: .heavy)
    )
    
    //selection feedback
    let selectioGenerator = UISelectionFeedbackGenerator()

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func errorBtnPressed(_ sender: Any) {
        generator.notificationOccurred(.error)
    }
    
    @IBAction func sucessBtnPressed(_ sender: Any) {
        generator.notificationOccurred(.success)
    }
    
    
    @IBAction func warningBtnPressed(_ sender: Any) {
        generator.notificationOccurred(.warning)

    }
    
    @IBAction func impactLightBtnPressed(_ sender: Any) {
        //let generator = UIImpactFeedbackGenerator(style: .light)
        //generator.prepare()
        //generator.impactOccurred()
        impactFeedbackGenerator.light.prepare()
        impactFeedbackGenerator.light.impactOccurred()
    }
    
    @IBAction func impactHeavyBtnPressed(_ sender: Any) {
        //let generator = UIImpactFeedbackGenerator(style: .heavy)
        //generator.prepare()
        //generator.impactOccurred()
        
        impactFeedbackGenerator.heavy.prepare()
        impactFeedbackGenerator.heavy.impactOccurred()
    }
    
    @IBAction func impactMediumBtnPressed(_ sender: Any) {
        //let generator = UIImpactFeedbackGenerator(style: .medium)
        //generator.prepare()
        //generator.impactOccurred()
        
        impactFeedbackGenerator.medium.prepare()
        impactFeedbackGenerator.medium.impactOccurred()
    }
    
    @IBAction func selectionFeedbackBtnPressed(_ sender: Any) {
        selectioGenerator.selectionChanged()
    }
    
}

