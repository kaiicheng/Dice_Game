//
//  ViewController.swift
//  Dice_Game
//
//  Created by ZenaCheng on 2017/12/8.
//  Copyright © 2017年 KaiCheng. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var randomNumber1 : Int = 0
    var randomNumber2 : Int = 0
    let imageArray = ["1","2","3","4","5","6"]


    @IBOutlet weak var diceImage1: UIImageView!
    
    @IBOutlet weak var diceImage2: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        updateDiceImage()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func rollButton(_ sender: Any) {
     
        updateDiceImage()
    
        
        
    
    }
    func updateDiceImage(){
        randomNumber1 = Int(arc4random_uniform(6))
        randomNumber2 = Int(arc4random_uniform(6))
        diceImage1.image = UIImage(named:imageArray[randomNumber1])
        diceImage2.image = UIImage(named:imageArray[randomNumber2])}
    }


