//
//  ViewController.swift
//  Brand Application
//
//  Created by sejal khanna on 26/07/20.
//  Copyright © 2020 sejal khanna. All rights reserved.
//
import UIKit

class ViewController: UIViewController {
@IBOutlet weak var BrandName: UILabel!
    
    
    @IBOutlet weak var choice1Button: UIButton!
    @IBOutlet weak var choice2Button: UIButton!
    
    var brandBrain = BrandBrain()
    

    override func viewDidLoad() {
        super.viewDidLoad()
                      updateUI()
    }
    
    @IBAction func choice1Button(_ sender:UIButton){
        let userAnswer = sender.currentTitle!
       let userGotItRight =  brandBrain.checkAnswer(userAnswer)
        
        if userGotItRight {
            sender.backgroundColor = UIColor.red
        }else {
            sender.backgroundColor = UIColor.green
        }
        brandBrain.nextBrand()
       
         Timer.scheduledTimer(timeInterval: 0.2, target:self, selector: #selector(updateUI), userInfo:nil, repeats: false)
    
    }

    @objc func updateUI() {
        DispatchQueue.main.async {
            self.BrandName.text  = self.brandBrain.getBrandsText()
                   
            self.choice1Button.setTitle(self.brandBrain.getChoice1(),for: .normal)
            self.choice2Button.setTitle(self.brandBrain.getChoice2(),for: .normal)
            self.choice1Button.backgroundColor = UIColor.clear
            self.choice2Button.backgroundColor = UIColor.clear
        }
        
    }
      
}




