//
//  ViewController.swift
//  theTapper
//
//  Created by Jared Sobol on 12/31/15.
//  Copyright © 2015 Appmaker. All rights reserved.
//



import UIKit

class ViewController: UIViewController {
    //Properties
    
    var maxTaps: Int = 0
    var currentTapps = 0
  
    //Outlets
    @IBOutlet weak var logoImg: UIImageView!
    @IBOutlet weak var howManyTapsText: UITextField!
    @IBOutlet weak var playBtn: UIButton!
    
    @IBOutlet weak var tapBtn: UIButton!
    @IBOutlet weak var tapLbl: UILabel!
    
    @IBAction func onCoinTapped(sender: UIButton!) {
        currentTapps++
        updateTapsLbl()
        
        if isGameOver() {
             restartGame()
        }
    }
    
    @IBAction func onPlayBtnPressed(sender: UIButton!) {
      
        
        if howManyTapsText.text != nil && howManyTapsText.text != "" {
            
            logoImg.hidden = true
            playBtn.hidden = true
            howManyTapsText.hidden = true
            
            tapBtn.hidden = false
            tapLbl.hidden = false
            
            maxTaps = Int(howManyTapsText.text!)!
            currentTapps = 0
            
           updateTapsLbl()
        }
        
    }
    
    func restartGame() {
        maxTaps = 0
        howManyTapsText.text = ""
        
        logoImg.hidden = false
        playBtn.hidden = false
        howManyTapsText.hidden = false
        
        tapBtn.hidden = true
        tapLbl.hidden = true
    }
    
    func isGameOver() -> Bool {
        
        if currentTapps >= maxTaps {
          return true
        } else {
          return false
        }
    }
    
    func updateTapsLbl() {
        tapLbl.text = "\(currentTapps) Taps"
    }
}

