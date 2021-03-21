//
//  ViewController.swift
//  uikit-test03-21
//
//  Created by chenzhizs on 2021/03/21.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var button1: UIButton!
    @IBOutlet weak var button2: UIButton!
    @IBOutlet weak var button3: UIButton!
    @IBOutlet weak var endLabel: UILabel!
    @IBOutlet weak var Next: UIButton!
    
    var collectAnswer = String()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    func randomQuestion(){
        var randomNumber = arc4random() % 3
        randomNumber += 1
        
        switch randomNumber {
        case 1:
            questionLabel.text = "1+1="
            button3.setTitle("3", for: UIControl.State.normal)
            button2.setTitle("2", for: UIControl.State.normal)
            button1.setTitle("1", for: UIControl.State.normal)
            collectAnswer = "2"
            break
        case 2:
            questionLabel.text = "4-1="
            button3.setTitle("3", for: UIControl.State.normal)
            button2.setTitle("2", for: UIControl.State.normal)
            button1.setTitle("1", for: UIControl.State.normal)
            collectAnswer = "3"
            break
        case 3:
            questionLabel.text = "3-2="
            button3.setTitle("3", for: UIControl.State.normal)
            button2.setTitle("2", for: UIControl.State.normal)
            button1.setTitle("1", for: UIControl.State.normal)
            collectAnswer = "1"
            break
        default:
            break
        }
    }


    @IBAction func button1Action(_ sender: Any) {
        if collectAnswer=="1" {
            endLabel.text="OK"
        }else{
            endLabel.text = "buuuu!"
        }
    }
    @IBAction func button2Action(_ sender: Any) {
        if collectAnswer=="2" {
            endLabel.text="OK"
        }else{
            endLabel.text = "buuuu!"
        }
    }
    @IBAction func button3Action(_ sender: Any) {
        if collectAnswer=="3" {
            endLabel.text="OK"
        }else{
            endLabel.text = "buuuu!"
        }
    }
    @IBAction func Next(_ sender: Any) {
        randomQuestion()
    }
}

