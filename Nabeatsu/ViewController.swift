//
//  ViewController.swift
//  Nabeatsu
//
//  Created by nagata on 2017/06/19.
//  Copyright © 2017年 Life is Tech!. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var number: Int = 0
    @IBOutlet var countLabel: UILabel!
    @IBOutlet var faceLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    func isGod() -> Bool {
         
        if number % 17 == 0{
            return true
        }
        
        var checkNum: Int = number
        
        while checkNum != 0{
            if checkNum % 100 == 17{
                return true
            }else{
                checkNum = checkNum / 100
            }
        }
        
        return false
    }
    
    func isHadou() -> Bool {
         
        if number % 8 == 0{
            return true
        }
        
        var checkNum: Int = number
        
        while checkNum != 0{
            if checkNum % 10 == 8{
                return true
            }else{
                checkNum = checkNum / 10
            }
        }
        
        return false
    }
    
    func isAho() -> Bool {
        // 問題1: 3の倍数かどうか調べる
        if number % 3 == 0 {
            return true
        }
       
        // 問題4: 3がつくかどうか調べる
        var checkNum: Int = number
        
        while checkNum != 0{
            if checkNum % 10 == 3{
                return true
            }else{
                checkNum = checkNum / 10
            }
        }
        
        return false
    }
    
    
    
    @IBAction func plusButton(){
        number = number + 1
        countLabel.text = String(number)
        
        if isGod() == true{
            faceLabel.text = "😇"
            
        } else if isAho() == true {
            
            faceLabel.text = "🤢"
            
        } else if isHadou() == true {
            
            faceLabel.text = "🤮"
            
        }else{
            faceLabel.text = "😨"
        }
    }
    
    @IBAction func crear(){
        number = 0
        countLabel.text = String(number)
        faceLabel.text = "🙂"
    }


}

