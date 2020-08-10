//
//  BrandBrain.swift
//  Brand Application
//
//  Created by sejal khanna on 26/07/20.
//  Copyright © 2020 sejal khanna. All rights reserved.
//

import Foundation


struct BrandBrain {
    
       var brandNumber = 0
    
    let brands = [
      Brands(b:"The unsold sections of this brandproducts at the end of every season are taken back to the factory, where they set to fire. This is to ensure that the brand retains its value and class.", c1:"Louis Vuitton", c2:"Mango", a:"Mango"),
             
       Brands(b: "The world famous  floral print scarf was first designed for Monaco’s Princess Grace by this brand in 1966.", c1: "Guess", c2: "Gucci", a:"Guess"),
             
       Brands(b: "This was the first brand to ban models from participating in its shows if their Body Mass Index (BMI)was lower than 18.", c1: "Versace", c2: "Armani", a:"Versace"),
             
       Brands(b: "Every outfit by this British designer  has a hidden secret. Inside the clothes, there is always a secret like hidden pockets or even an amazing pattern on the inside of the collar of a jacket.", c1: "Eleanor Waldorf", c2: "Paul Smith", a:"Eleanor Waldorf"),
             
       Brands(b: "The LG “Prada Phone” was the first mobile phone to be entirely touch screen – 6 months before the Apple iPhone!", c1: "Apple", c2: "Prada", a:"Prada"),
             
       Brands(b: "This is known as the brand that invented the suit for women. It’s designer made women wear pants in fashion shows which were previously only worn by men.", c1:"Dolce&Gabana", c2: "Coco Chanel", a:"Dolce&Gabana")
         
       ]
 

    func checkAnswer(_ userAnswer: String) -> Bool {
        if userAnswer == brands[brandNumber].answer {
            return true
        } else {
            return false
        }
    }
        
    
    func getBrandsText() -> String {
            return brands[brandNumber].text
        }

    func getChoice1() -> String {
        return brands[brandNumber].choice1
    }

    func getChoice2() -> String {
        return brands[brandNumber].choice2
    }
    
    mutating func nextBrand() {
        if brandNumber + 1 < brands.count {
                    brandNumber = brandNumber+1
               } else {
                   brandNumber = 0
               }
    
    
    }
}

