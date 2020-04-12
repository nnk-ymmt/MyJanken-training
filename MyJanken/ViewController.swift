//
//  ViewController.swift
//  MyJanken
//
//  Created by 山本ののか on 2020/04/11.
//  Copyright © 2020 NonokaYamamoto. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBOutlet weak var answerImageView: UIImageView!
    
    @IBOutlet weak var answerLabel: UILabel!
    
    //じゃんけん（数字）
    var answerNumber = 0
    
    @IBAction func shuffleAction(_ sender: Any) {
        //新しいじゃんけんの結果を一時的に格納する変数を設ける
        var newAnswerNumber = 0
        
        //ランダムに結果を出すが、前回の結果と異なる場合のみ採用
        //repeatは繰り返しを意味する
        repeat {
            
            //0,1,2の数値をランダムに算出（乱数）
            newAnswerNumber = Int.random(in: 0..<3)
            
            //前回と同じ結果のときは、再度、ランダムに数値を出す
            //異なる結果の知己は、repeatを抜ける
        } while answerNumber == newAnswerNumber
    
        //新しいじゃんけんの結果を格納
        answerNumber = newAnswerNumber
        
        if answerNumber == 0 {
            
            //グー
            answerLabel.text = "グー"
            answerImageView.image = UIImage(named:"gu")
            
        } else if answerNumber == 1 {
            
            //チョキ
            answerLabel.text = "チョキ"
            answerImageView.image = UIImage(named:"choki")
            
        } else if answerNumber == 2 {
            
            //パー
            answerLabel.text = "パー"
            answerImageView.image = UIImage(named:"pa")
            
        }
        
    }
}

