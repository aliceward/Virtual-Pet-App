//
//  ViewController.swift
//  AliceWard-Lab2
//
//  Created by Alice Ward on 9/22/18.
//  Copyright © 2018 Alice Ward. All rights reserved.
//

import UIKit
import AVFoundation
 
class ViewController: UIViewController {


   private var currentAnimal:Animal!

    @IBOutlet weak var petBackground: UIView!
    @IBOutlet weak var animalPic: UIImageView!
    
    @IBOutlet weak var happyNum: UILabel!
    @IBOutlet weak var foodNum: UILabel!
    
    @IBOutlet weak var happyView: DisplayView!
    @IBOutlet weak var foodView: DisplayView!
    
    @IBOutlet weak var animalSound: UILabel!
    
    var dog = Animal(happyLevel: 0, foodLevel: 0, totHappyLevel: 0, totFoodLevel: 0)
    var cat = Animal(happyLevel: 0, foodLevel: 0, totHappyLevel: 0, totFoodLevel: 0)
    var bird = Animal(happyLevel: 0, foodLevel: 0, totHappyLevel: 0, totFoodLevel: 0)
    var bunny = Animal(happyLevel: 0, foodLevel: 0, totHappyLevel: 0, totFoodLevel: 0)
    var fish = Animal(happyLevel: 0, foodLevel: 0, totHappyLevel: 0, totFoodLevel: 0)
    
    //Creative Portion
    let playFile = Bundle.main.url(forResource: "play", withExtension:".wav")!
    var playEffect:AVAudioPlayer?
    let chewFile = Bundle.main.url(forResource: "chew", withExtension: ".wav")!
    var chewEffect:AVAudioPlayer?
    
    
    @IBAction func playPressed(_ sender: Any) {
        currentAnimal!.play()
        updateDisplay()
        playEffect?.play()
    }
    @IBAction func feedPressed(_ sender: Any) {
        currentAnimal!.feed()
        updateDisplay()
        chewEffect?.play()
    }
    
    @IBAction func dogPressed(_ sender: Any) {
        currentAnimal = dog
        currentAnimal.dogTime()
        petBackground.backgroundColor = UIColor(red:0.99, green:0.32, blue:0.33, alpha: 1.0)
        happyView.color = UIColor(red:0.99, green:0.32, blue:0.33, alpha: 1.0)
        foodView.color = UIColor(red:0.99, green:0.32, blue:0.33, alpha: 1.0)
        updateDisplay()
    }
    @IBAction func catPressed(_ sender: Any) {
        currentAnimal = cat
        currentAnimal.catTime()
        petBackground.backgroundColor = UIColor(red:0.31, green:0.58, blue:0.97, alpha:1.0)
        happyView.color = UIColor(red:0.31, green:0.58, blue:0.97, alpha:1.0)
        foodView.color = UIColor(red:0.31, green:0.58, blue:0.97, alpha:1.0)
        updateDisplay()
    }
    @IBAction func birdPressed(_ sender: Any) {
        currentAnimal = bird
        currentAnimal.birdTime()
        petBackground.backgroundColor = UIColor(red:0.91, green:0.78, blue:0.31, alpha:1.0)
        happyView.color = UIColor(red:0.91, green:0.78, blue:0.31, alpha:1.0)
        foodView.color = UIColor(red:0.91, green:0.78, blue:0.31, alpha:1.0)
        updateDisplay()
    }
    @IBAction func bunnyPressed(_ sender: Any) {
        currentAnimal = bunny
        currentAnimal.bunnyTime()
        petBackground.backgroundColor = UIColor(red:0.95, green:0.80, blue:0.70, alpha:1.0)
        happyView.color = UIColor(red:0.95, green:0.80, blue:0.70, alpha:1.0)
        foodView.color = UIColor(red:0.95, green:0.80, blue:0.70, alpha:1.0)
        updateDisplay()
    }
    @IBAction func fishPressed(_ sender: Any) {
        currentAnimal = fish
        currentAnimal.fishTime()
        petBackground.backgroundColor = UIColor(red:0.90, green:0.63, blue:0.99, alpha:1.0)
        happyView.color = UIColor(red:0.90, green:0.63, blue:0.99, alpha:1.0)
        foodView.color = UIColor(red:0.90, green:0.63, blue:0.99, alpha:1.0)
        updateDisplay()
    }
    
    func updateDisplay(){
        animalPic.image = currentAnimal.animalImage
        let happyValue = currentAnimal.totHappyLevel
        happyNum.text = String(happyValue)
        let foodValue = currentAnimal.totFoodLevel
        foodNum.text = String(foodValue)
        
        let currentHappyValue = Double(currentAnimal.totHappyLevel)/10
        happyView.animateValue(to: CGFloat(currentHappyValue))
        let currentFoodValue = Double(currentAnimal.totFoodLevel)/10
        foodView.animateValue(to: CGFloat(currentFoodValue))
        
        //Creative Portion
        animalSound.text = currentAnimal.animalSound
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        currentAnimal = dog
        happyView.color = UIColor(red:0.99, green:0.32, blue:0.33, alpha: 1.0)
        foodView.color = UIColor(red:0.99, green:0.32, blue:0.33, alpha: 1.0)
        
        //Creative Portion
        do{
            try playEffect = AVAudioPlayer(contentsOf: playFile)
            try chewEffect = AVAudioPlayer(contentsOf: chewFile)
        }catch{
            print(error)
        }
        
      
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}
