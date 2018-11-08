//
//  Animal.swift
//  AliceWard-Lab2
//
//  Created by Alice Ward on 9/23/18.
//  Copyright © 2018 Alice Ward. All rights reserved.
//

import UIKit
import Foundation
import AVFoundation

class Animal {
    var happyLevel:Int = 0
    var foodLevel:Int = 0
    private (set) var totHappyLevel: Int = 0
    private (set) var totFoodLevel:Int = 0
    var animalImage:UIImage
    var animalSound:String
    
    func play() {
        if(foodLevel <= 0){
            return
        }
        else{
            happyLevel += 1
            totHappyLevel += 1
            foodLevel -= 1
            totFoodLevel -= 1
            if (happyLevel < 0){
                happyLevel = 0
            }else if (foodLevel < 0){
                foodLevel = 0
            }else{
            }
        }
    }
    func feed() {
        foodLevel += 1
        totFoodLevel += 1
        if (happyLevel < 0){
            happyLevel = 0
        }else if (foodLevel < 0){
            foodLevel = 0
        }else{
        }
    }
    

    func dogTime(){
        animalImage = UIImage(named: "dog")!
        animalSound = "Woof!"

    }
    func catTime(){
        animalImage = UIImage(named: "cat")!
        animalSound = "Meow!"
    }
    func birdTime(){
        animalImage = UIImage(named: "bird")!
        animalSound = "Squawk!"
    }
    func bunnyTime(){
        animalImage = UIImage(named: "bunny")!
        animalSound = "*hop hop*"
    }
    func fishTime(){
        animalImage = UIImage(named: "fish")!
        animalSound = "*glug glug*"
    }
    
    init(happyLevel: Int, foodLevel: Int, totHappyLevel: Int, totFoodLevel: Int){
        self.happyLevel = 0
        self.foodLevel = 0
        self.totHappyLevel = 0
        self.totFoodLevel = 0
        animalImage = UIImage(named: "dog")!
        animalSound = String("")
    }


}

