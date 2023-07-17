//
//  ViewController.swift
//  CatchTheSheep
//
//  Created by IOS on 9/14/21.
//

import UIKit

class ViewController: UIViewController {
    var gamePlay = true
    var turn = player.Wolf
    var wolfPosition = 0
    var sheepPosition = 0
    
    enum player {
        case Wolf
        case Sheep
    }

    @IBOutlet weak var button1: UIButton!
    @IBOutlet weak var button2: UIButton!
    @IBOutlet weak var button3: UIButton!
    @IBOutlet weak var button4: UIButton!
    @IBOutlet weak var button5: UIButton!
    @IBOutlet weak var button6: UIButton!
    @IBOutlet weak var button7: UIButton!
    @IBOutlet weak var button8: UIButton!
    @IBOutlet weak var button9: UIButton!
    @IBOutlet weak var button10: UIButton!
    @IBOutlet weak var button11: UIButton!
    @IBOutlet weak var button12: UIButton!
    @IBOutlet weak var button13: UIButton!
    @IBOutlet weak var button14: UIButton!
    @IBOutlet weak var button15: UIButton!
    @IBOutlet weak var button16: UIButton!
    @IBOutlet weak var button17: UIButton!
    @IBOutlet weak var button18: UIButton!
    @IBOutlet weak var button19: UIButton!
    @IBOutlet weak var button20: UIButton!
    @IBOutlet weak var button21: UIButton!
    @IBOutlet weak var button22: UIButton!
    @IBOutlet weak var button23: UIButton!
    @IBOutlet weak var button24: UIButton!
    @IBOutlet weak var button25: UIButton!
    
    @IBOutlet weak var gameOverImage: UIImageView!
    @IBOutlet weak var congratsImage: UIImageView!
    @IBOutlet weak var timerLabel: UILabel!
    
    var timer = Timer()
    var secondsRemaining = 60
    
    @IBAction func wolfMoves(_ sender: UIButton) {
        let newWolfPos = Int(sender.currentTitle!)
        
        if(turn == player.Wolf){
            if(newWolfPos == wolfPosition - 1 || newWolfPos == wolfPosition + 1 || newWolfPos == wolfPosition - 5 || newWolfPos == wolfPosition + 5){

                switch wolfPosition {
                case 0:
                    button1.setImage(UIImage(named: ""), for: .normal)
                case 1:
                    button2.setImage(UIImage(named: ""), for: .normal)
                case 2:
                    button3.setImage(UIImage(named: ""), for: .normal)
                case 3:
                    button4.setImage(UIImage(named: ""), for: .normal)
                case 4:
                    button5.setImage(UIImage(named: ""), for: .normal)
                case 5:
                    button6.setImage(UIImage(named: ""), for: .normal)
                case 6:
                    button7.setImage(UIImage(named: ""), for: .normal)
                case 7:
                    button8.setImage(UIImage(named: ""), for: .normal)
                case 8:
                    button9.setImage(UIImage(named: ""), for: .normal)
                case 9:
                    button10.setImage(UIImage(named: ""), for: .normal)
                case 10:
                    button11.setImage(UIImage(named: ""), for: .normal)
                case 11:
                    button12.setImage(UIImage(named: ""), for: .normal)
                case 12:
                    button13.setImage(UIImage(named: ""), for: .normal)
                case 13:
                    button14.setImage(UIImage(named: ""), for: .normal)
                case 14:
                    button15.setImage(UIImage(named: ""), for: .normal)
                case 15:
                    button16.setImage(UIImage(named: ""), for: .normal)
                case 16:
                    button17.setImage(UIImage(named: ""), for: .normal)
                case 17:
                    button18.setImage(UIImage(named: ""), for: .normal)
                case 18:
                    button19.setImage(UIImage(named: ""), for: .normal)
                case 19:
                    button20.setImage(UIImage(named: ""), for: .normal)
                case 20:
                    button21.setImage(UIImage(named: ""), for: .normal)
                case 21:
                    button22.setImage(UIImage(named: ""), for: .normal)
                case 22:
                    button23.setImage(UIImage(named: ""), for: .normal)
                case 23:
                    button24.setImage(UIImage(named: ""), for: .normal)
                case 24:
                    button25.setImage(UIImage(named: ""), for: .normal)
                default:
                    button1.setImage(UIImage(named: ""), for: .normal)
                }

                sender.setImage(UIImage(named: "wolf.png"), for: .normal)

                wolfPosition = newWolfPos!
//                turn = player.Sheep
                if (checkState() == true) {
                    sender.setImage(UIImage(named: "wolf.png"), for: .normal)
                    congratsImage.isHidden = false
                    timer.invalidate()
                } else {
                    turn = player.Sheep
                }
            }
        }
        
        if(turn == player.Sheep) {
            DispatchQueue.main.asyncAfter(deadline: .now() + 10.0) { }
            sheepMove()
            
            if (checkState() == true) {
                sender.setImage(UIImage(named: "wolf.png"), for: .normal)
                congratsImage.isHidden = false
                timer.invalidate()
            } else {
                turn = player.Wolf
            }
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        initializeGame()
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(timerClass), userInfo: nil, repeats: true)
        
        
    }

    func initializeGame() {
        gameOverImage.isHidden = true
        congratsImage.isHidden = true
        
        while(sheepPosition == wolfPosition) {
            wolfPosition = Int.random(in: 0...24)
            sheepPosition =  Int.random(in: 0...24)
        }
        
        switch wolfPosition {
        case 0:
            button1.setImage(UIImage(named: "wolf.png"), for: .normal)
        case 1:
            button2.setImage(UIImage(named: "wolf.png"), for: .normal)
        case 2:
            button3.setImage(UIImage(named: "wolf.png"), for: .normal)
        case 3:
            button4.setImage(UIImage(named: "wolf.png"), for: .normal)
        case 4:
            button5.setImage(UIImage(named: "wolf.png"), for: .normal)
        case 5:
            button6.setImage(UIImage(named: "wolf.png"), for: .normal)
        case 6:
            button7.setImage(UIImage(named: "wolf.png"), for: .normal)
        case 7:
            button8.setImage(UIImage(named: "wolf.png"), for: .normal)
        case 8:
            button9.setImage(UIImage(named: "wolf.png"), for: .normal)
        case 9:
            button10.setImage(UIImage(named: "wolf.png"), for: .normal)
        case 10:
            button11.setImage(UIImage(named: "wolf.png"), for: .normal)
        case 11:
            button12.setImage(UIImage(named: "wolf.png"), for: .normal)
        case 12:
            button13.setImage(UIImage(named: "wolf.png"), for: .normal)
        case 13:
            button14.setImage(UIImage(named: "wolf.png"), for: .normal)
        case 14:
            button15.setImage(UIImage(named: "wolf.png"), for: .normal)
        case 15:
            button16.setImage(UIImage(named: "wolf.png"), for: .normal)
        case 16:
            button17.setImage(UIImage(named: "wolf.png"), for: .normal)
        case 17:
            button18.setImage(UIImage(named: "wolf.png"), for: .normal)
        case 18:
            button19.setImage(UIImage(named: "wolf.png"), for: .normal)
        case 19:
            button20.setImage(UIImage(named: "wolf.png"), for: .normal)
        case 20:
            button21.setImage(UIImage(named: "wolf.png"), for: .normal)
        case 21:
            button22.setImage(UIImage(named: "wolf.png"), for: .normal)
        case 22:
            button23.setImage(UIImage(named: "wolf.png"), for: .normal)
        case 23:
            button24.setImage(UIImage(named: "wolf.png"), for: .normal)
        case 24:
            button25.setImage(UIImage(named: "wolf.png"), for: .normal)
        default:
            button1.setImage(UIImage(named: "wolf.png"), for: .normal)
        }
        
        switch sheepPosition {
        case 0:
            button1.setImage(UIImage(named: "sheep.png"), for: .normal)
        case 1:
            button2.setImage(UIImage(named: "sheep.png"), for: .normal)
        case 2:
            button3.setImage(UIImage(named: "sheep.png"), for: .normal)
        case 3:
            button4.setImage(UIImage(named: "sheep.png"), for: .normal)
        case 4:
            button5.setImage(UIImage(named: "sheep.png"), for: .normal)
        case 5:
            button6.setImage(UIImage(named: "sheep.png"), for: .normal)
        case 6:
            button7.setImage(UIImage(named: "sheep.png"), for: .normal)
        case 7:
            button8.setImage(UIImage(named: "sheep.png"), for: .normal)
        case 8:
            button9.setImage(UIImage(named: "sheep.png"), for: .normal)
        case 9:
            button10.setImage(UIImage(named: "sheep.png"), for: .normal)
        case 10:
            button11.setImage(UIImage(named: "sheep.png"), for: .normal)
        case 11:
            button12.setImage(UIImage(named: "sheep.png"), for: .normal)
        case 12:
            button13.setImage(UIImage(named: "sheep.png"), for: .normal)
        case 13:
            button14.setImage(UIImage(named: "sheep.png"), for: .normal)
        case 14:
            button15.setImage(UIImage(named: "sheep.png"), for: .normal)
        case 15:
            button16.setImage(UIImage(named: "sheep.png"), for: .normal)
        case 16:
            button17.setImage(UIImage(named: "sheep.png"), for: .normal)
        case 17:
            button18.setImage(UIImage(named: "sheep.png"), for: .normal)
        case 18:
            button19.setImage(UIImage(named: "sheep.png"), for: .normal)
        case 19:
            button20.setImage(UIImage(named: "sheep.png"), for: .normal)
        case 20:
            button21.setImage(UIImage(named: "sheep.png"), for: .normal)
        case 21:
            button22.setImage(UIImage(named: "sheep.png"), for: .normal)
        case 22:
            button23.setImage(UIImage(named: "sheep.png"), for: .normal)
        case 23:
            button24.setImage(UIImage(named: "sheep.png"), for: .normal)
        case 24:
            button25.setImage(UIImage(named: "sheep.png"), for: .normal)
        default:
            button1.setImage(UIImage(named: "sheep.png"), for: .normal)
        }
    }
    
    func sheepMove() {
        
        var move2 = Int.random(in: 1...2)
        var move3 = Int.random(in: 1...3)
        var move4 = Int.random(in: 1...4)
        
        var newSheepPos = 0
        
        //sheep moves
        switch sheepPosition {
        case 0:
            button1.setImage(UIImage(named: ""), for: .normal)
            if move2 == 1 {
                newSheepPos = sheepPosition + 1
            }
            else {
                newSheepPos = sheepPosition + 5
            }
        case 1:
            button2.setImage(UIImage(named: ""), for: .normal)
            if move3 == 1 {
                newSheepPos = sheepPosition - 1
            }
            else if move3 == 2 {
                newSheepPos = sheepPosition + 1
            }
            else {
                newSheepPos = sheepPosition + 5
            }
        case 2:
            button3.setImage(UIImage(named: ""), for: .normal)
            if move3 == 1 {
                newSheepPos = sheepPosition - 1
            }
            else if move3 == 2 {
                newSheepPos = sheepPosition + 1
            }
            else {
                newSheepPos = sheepPosition + 5
            }
        case 3:
            button4.setImage(UIImage(named: ""), for: .normal)
            if move3 == 1 {
                newSheepPos = sheepPosition - 1
            }
            else if move3 == 2 {
                newSheepPos = sheepPosition + 1
            }
            else {
                newSheepPos = sheepPosition + 5
            }
        case 4:
            button5.setImage(UIImage(named: ""), for: .normal)
            if move2 == 1 {
                newSheepPos = sheepPosition - 1
            }
            else {
                newSheepPos = sheepPosition + 5
            }
        case 5:
            button6.setImage(UIImage(named: ""), for: .normal)
            if move3 == 1 {
                newSheepPos = sheepPosition - 5
            }
            else if move3 == 2 {
                newSheepPos = sheepPosition + 1
            }
            else {
                newSheepPos = sheepPosition + 5
            }
        case 6:
            button7.setImage(UIImage(named: ""), for: .normal)
            if move4 == 1 {
                newSheepPos = sheepPosition - 5
            }
            else if move4 == 2 {
                newSheepPos = sheepPosition - 1
            }
            else if move4 == 3 {
                newSheepPos = sheepPosition + 1
            }
            else {
                newSheepPos = sheepPosition + 5
            }
        case 7:
            button8.setImage(UIImage(named: ""), for: .normal)
            if move4 == 1 {
                newSheepPos = sheepPosition - 5
            }
            else if move4 == 2 {
                newSheepPos = sheepPosition - 1
            }
            else if move4 == 3 {
                newSheepPos = sheepPosition + 1
            }
            else {
                newSheepPos = sheepPosition + 5
            }
        case 8:
            button9.setImage(UIImage(named: ""), for: .normal)
            if move4 == 1 {
                newSheepPos = sheepPosition - 5
            }
            else if move4 == 2 {
                newSheepPos = sheepPosition - 1
            }
            else if move4 == 3 {
                newSheepPos = sheepPosition + 1
            }
            else {
                newSheepPos = sheepPosition + 5
            }
        case 9:
            button10.setImage(UIImage(named: ""), for: .normal)
            if move3 == 1 {
                newSheepPos = sheepPosition - 5
            }
            else if move3 == 2 {
                newSheepPos = sheepPosition - 1
            }
            else {
                newSheepPos = sheepPosition + 5
            }
        case 10:
            button11.setImage(UIImage(named: ""), for: .normal)
            if move3 == 1 {
                newSheepPos = sheepPosition - 5
            }
            else if move3 == 2 {
                newSheepPos = sheepPosition + 1
            }
            else {
                newSheepPos = sheepPosition + 5
            }
        case 11:
            button12.setImage(UIImage(named: ""), for: .normal)
            if move4 == 1 {
                newSheepPos = sheepPosition - 5
            }
            else if move4 == 2 {
                newSheepPos = sheepPosition - 1
            }
            else if move4 == 3 {
                newSheepPos = sheepPosition + 1
            }
            else {
                newSheepPos = sheepPosition + 5
            }
        case 12:
            button13.setImage(UIImage(named: ""), for: .normal)
            if move4 == 1 {
                newSheepPos = sheepPosition - 5
            }
            else if move4 == 2 {
                newSheepPos = sheepPosition - 1
            }
            else if move4 == 3 {
                newSheepPos = sheepPosition + 1
            }
            else {
                newSheepPos = sheepPosition + 5
            }
        case 13:
            button14.setImage(UIImage(named: ""), for: .normal)
            if move4 == 1 {
                newSheepPos = sheepPosition - 5
            }
            else if move4 == 2 {
                newSheepPos = sheepPosition - 1
            }
            else if move4 == 3 {
                newSheepPos = sheepPosition + 1
            }
            else {
                newSheepPos = sheepPosition + 5
            }
        case 14:
            button15.setImage(UIImage(named: ""), for: .normal)
            if move3 == 1 {
                newSheepPos = sheepPosition - 5
            }
            else if move3 == 2 {
                newSheepPos = sheepPosition - 1
            }
            else {
                newSheepPos = sheepPosition + 5
            }
        case 15:
            button16.setImage(UIImage(named: ""), for: .normal)
            if move3 == 1 {
                newSheepPos = sheepPosition - 5
            }
            else if move3 == 2 {
                newSheepPos = sheepPosition + 1
            }
            else {
                newSheepPos = sheepPosition + 5
            }
        case 16:
            button17.setImage(UIImage(named: ""), for: .normal)
            if move4 == 1 {
                newSheepPos = sheepPosition - 5
            }
            else if move4 == 2 {
                newSheepPos = sheepPosition - 1
            }
            else if move4 == 3 {
                newSheepPos = sheepPosition + 1
            }
            else {
                newSheepPos = sheepPosition + 5
            }
        case 17:
            button18.setImage(UIImage(named: ""), for: .normal)
            if move4 == 1 {
                newSheepPos = sheepPosition - 5
            }
            else if move4 == 2 {
                newSheepPos = sheepPosition - 1
            }
            else if move4 == 3 {
                newSheepPos = sheepPosition + 1
            }
            else {
                newSheepPos = sheepPosition + 5
            }
        case 18:
            button19.setImage(UIImage(named: ""), for: .normal)
            if move4 == 1 {
                newSheepPos = sheepPosition - 5
            }
            else if move4 == 2 {
                newSheepPos = sheepPosition - 1
            }
            else if move4 == 3 {
                newSheepPos = sheepPosition + 1
            }
            else {
                newSheepPos = sheepPosition + 5
            }
        case 19:
            button20.setImage(UIImage(named: ""), for: .normal)
            if move3 == 1 {
                newSheepPos = sheepPosition - 5
            }
            else if move3 == 2 {
                newSheepPos = sheepPosition - 1
            }
            else {
                newSheepPos = sheepPosition + 5
            }
        case 20:
            button21.setImage(UIImage(named: ""), for: .normal)
            if move2 == 1 {
                newSheepPos = sheepPosition + 1
            }
            else {
                newSheepPos = sheepPosition - 5
            }
        case 21:
            button22.setImage(UIImage(named: ""), for: .normal)
            if move3 == 1 {
                newSheepPos = sheepPosition - 1
            }
            else if move3 == 2 {
                newSheepPos = sheepPosition + 1
            }
            else {
                newSheepPos = sheepPosition - 5
            }
        case 22:
            button23.setImage(UIImage(named: ""), for: .normal)
            if move3 == 1 {
                newSheepPos = sheepPosition - 1
            }
            else if move3 == 2 {
                newSheepPos = sheepPosition + 1
            }
            else {
                newSheepPos = sheepPosition - 5
            }
        case 23:
            button24.setImage(UIImage(named: ""), for: .normal)
            if move3 == 1 {
                newSheepPos = sheepPosition - 1
            }
            else if move3 == 2 {
                newSheepPos = sheepPosition + 1
            }
            else {
                newSheepPos = sheepPosition - 5
            }
        case 24:
            button25.setImage(UIImage(named: ""), for: .normal)
            if move2 == 1 {
                newSheepPos = sheepPosition - 1
            }
            else {
                newSheepPos = sheepPosition - 5
            }
        default:
            button1.setImage(UIImage(named: ""), for: .normal)
        }

        switch newSheepPos {
        case 0:
            button1.setImage(UIImage(named: "sheep.png"), for: .normal)
        case 1:
            button2.setImage(UIImage(named: "sheep.png"), for: .normal)
        case 2:
            button3.setImage(UIImage(named: "sheep.png"), for: .normal)
        case 3:
            button4.setImage(UIImage(named: "sheep.png"), for: .normal)
        case 4:
            button5.setImage(UIImage(named: "sheep.png"), for: .normal)
        case 5:
            button6.setImage(UIImage(named: "sheep.png"), for: .normal)
        case 6:
            button7.setImage(UIImage(named: "sheep.png"), for: .normal)
        case 7:
            button8.setImage(UIImage(named: "sheep.png"), for: .normal)
        case 8:
            button9.setImage(UIImage(named: "sheep.png"), for: .normal)
        case 9:
            button10.setImage(UIImage(named: "sheep.png"), for: .normal)
        case 10:
            button11.setImage(UIImage(named: "sheep.png"), for: .normal)
        case 11:
            button12.setImage(UIImage(named: "sheep.png"), for: .normal)
        case 12:
            button13.setImage(UIImage(named: "sheep.png"), for: .normal)
        case 13:
            button14.setImage(UIImage(named: "sheep.png"), for: .normal)
        case 14:
            button15.setImage(UIImage(named: "sheep.png"), for: .normal)
        case 15:
            button16.setImage(UIImage(named: "sheep.png"), for: .normal)
        case 16:
            button17.setImage(UIImage(named: "sheep.png"), for: .normal)
        case 17:
            button18.setImage(UIImage(named: "sheep.png"), for: .normal)
        case 18:
            button19.setImage(UIImage(named: "sheep.png"), for: .normal)
        case 19:
            button20.setImage(UIImage(named: "sheep.png"), for: .normal)
        case 20:
            button21.setImage(UIImage(named: "sheep.png"), for: .normal)
        case 21:
            button22.setImage(UIImage(named: "sheep.png"), for: .normal)
        case 22:
            button23.setImage(UIImage(named: "sheep.png"), for: .normal)
        case 23:
            button24.setImage(UIImage(named: "sheep.png"), for: .normal)
        case 24:
            button25.setImage(UIImage(named: "sheep.png"), for: .normal)
        default:
            button1.setImage(UIImage(named: "sheep.png"), for: .normal)
        }

        sheepPosition = newSheepPos
    }
    
    func checkState() -> Bool {
        if sheepPosition == wolfPosition {
            return true
        }
        else {
            return false
        }
    }
    
    @objc func timerClass() {
        secondsRemaining -= 1
        if(secondsRemaining < 10){
            timerLabel.text =  String(secondsRemaining/60) + ":" + "0" +  String(secondsRemaining%60)
        } else{
            timerLabel.text =  String(secondsRemaining/60) + ":" + String(secondsRemaining%60)
        }
        
        if(secondsRemaining <= 0) {
            gameOverImage.isHidden = false
            timer.invalidate()
            timerLabel.text = ""
        }
    }
}

