//
//  ViewController.swift
//  X O toy
//
//  Created by ALI on 05/07/21.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var currentTitle: UILabel!
    
    @IBOutlet weak var wonLbl: UILabel!
    
    
    @IBOutlet weak var horThree: UIImageView!
    @IBOutlet weak var horTwo: UIImageView!
    @IBOutlet weak var horOne: UIImageView!
    @IBOutlet weak var vertThree: UIImageView!
    @IBOutlet weak var vertTwo: UIImageView!
    @IBOutlet weak var vertOne: UIImageView!
    @IBOutlet weak var tepaChap: UIImageView!
    @IBOutlet weak var tepaOng: UIImageView!
    @IBOutlet weak var smile: UIImageView!
    @IBOutlet var btns: [UIButton]!
    
    var isX: Bool = true
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        restart()
    }
    
    func restart(){
        horThree.isHidden = true
        horTwo.isHidden = true
        horOne.isHidden = true
        vertThree.isHidden = true
        vertTwo.isHidden = true
        vertOne.isHidden = true
        tepaChap.isHidden = true
        tepaOng.isHidden = true
        wonLbl.textColor = .green
        smile.isHidden = true
        currentTitle.textColor = .yellow
        isX = true
        wonLbl.isHidden = true
        for btn in btns {
            btn.setTitle("", for: .normal)
            btn.isEnabled = true
        }
        if isX{
            currentTitle.text = "X"
            currentTitle.textColor = .systemBlue
        }else{
            currentTitle.textColor = .systemRed
            currentTitle.text = "O"
        }
    }
    
    @IBAction func restartBtnPressed(_ sender: Any) {
        restart()
    }
    
    
    @IBAction func btnsPressed(_ sender: UIButton) {
        if isX {
            sender.setTitle("X", for: .normal)
            sender.tintColor = .systemBlue
            isX = !isX
        }else{
            sender.tintColor = .red
            sender.setTitle("O", for: .normal)
            isX = !isX
        }
        if isX{
            currentTitle.text = "X"
        }else{
            currentTitle.text = "O"
        }
        sender.isEnabled = false
        chechForWinner()
    }
    func chechForWinner(){
        let firstTitle: String = btns[0].currentTitle ?? ""
        let secondTitle: String = btns[1].currentTitle ?? ""
        let thirdTitle: String = btns[2].currentTitle ?? ""
        let fourthTitle: String = btns[3].currentTitle ?? ""
        let fifthTitle: String = btns[4].currentTitle ?? ""
        let sixthTitle: String = btns[5].currentTitle ?? ""
        let seventhTitle: String = btns[6].currentTitle ?? ""
        let eightthTitle: String = btns[7].currentTitle ?? ""
        let ninthTitle: String = btns[8].currentTitle ?? ""
        
        
        let a = "X"
        let b = "O"
        
        
        if firstTitle == a && secondTitle == a && thirdTitle == a {
            for btn in btns {
                btn.isEnabled = false
            }
            wonLbl.isHidden = false
            currentTitle.text = "X"
            currentTitle.textColor = .green
            horOne.isHidden = false
            smile.isHidden = false
            smile.image = UIImage(named: "happySmile")
        }
        else if firstTitle == a && fourthTitle == a && seventhTitle == a {
            for btn in btns {
                btn.isEnabled = false
            }
            wonLbl.isHidden = false
            currentTitle.text = "X"
            currentTitle.textColor = .green
            vertOne.isHidden = false
            smile.isHidden = false
            smile.image = UIImage(named: "happySmile")
        }else if
            firstTitle == b && secondTitle == b && thirdTitle == b {
            for btn in btns {
                btn.isEnabled = false
            }
            wonLbl.isHidden = false
            currentTitle.text = "O"
            currentTitle.textColor = .green
            horOne.isHidden = false
            smile.isHidden = false
            smile.image = UIImage(named: "happySmile")
        }else if
            firstTitle == b && fourthTitle == b && seventhTitle == b {
            for btn in btns {
                btn.isEnabled = false
            }
            wonLbl.isHidden = false
            currentTitle.text = "O"
            currentTitle.textColor = .green
            vertOne.isHidden = false
            smile.isHidden = false
            smile.image = UIImage(named: "happySmile")
        }else if
            fifthTitle == a && firstTitle == a && ninthTitle == a {
            for btn in btns {
                btn.isEnabled = false
            }
            wonLbl.isHidden = false
            currentTitle.text = "X"
            currentTitle.textColor = .green
            tepaChap.isHidden = false
            smile.isHidden = false
            smile.image = UIImage(named: "happySmile")
        }else if
            fifthTitle == b && firstTitle == b && ninthTitle == b {
            for btn in btns {
                btn.isEnabled = false
            }
            wonLbl.isHidden = false
            currentTitle.text = "O"
            currentTitle.textColor = .green
            tepaChap.isHidden = false
            smile.isHidden = false
            smile.image = UIImage(named: "happySmile")
        }else if
            fifthTitle == a && thirdTitle == a && seventhTitle == a {
            for btn in btns {
                btn.isEnabled = false
            }
            wonLbl.isHidden = false
            currentTitle.text = "X"
            currentTitle.textColor = .green
            tepaOng.isHidden = false
            smile.isHidden = false
            smile.image = UIImage(named: "happySmile")
        }else if
            fifthTitle == b && thirdTitle == b && seventhTitle == b {
            for btn in btns {
                btn.isEnabled = false
            }
            wonLbl.isHidden = false
            currentTitle.text = "O"
            currentTitle.textColor = .green
            tepaOng.isHidden = false
            smile.isHidden = false
            smile.image = UIImage(named: "happySmile")
        }else if
            fifthTitle == a && secondTitle == a && eightthTitle == a {
            for btn in btns {
                btn.isEnabled = false
            }
            wonLbl.isHidden = false
            currentTitle.text = "X"
            currentTitle.textColor = .green
            vertTwo.isHidden = false
            smile.isHidden = false
            smile.image = UIImage(named: "happySmile")
        }else if
            fifthTitle == b && secondTitle == b && eightthTitle == b {
            for btn in btns {
                btn.isEnabled = false
            }
            wonLbl.isHidden = false
            currentTitle.text = "O"
            currentTitle.textColor = .green
            vertTwo.isHidden = false
            smile.isHidden = false
            smile.image = UIImage(named: "happySmile")
        }else if
            fifthTitle == a && fourthTitle == a && sixthTitle == a {
            for btn in btns {
                btn.isEnabled = false
            }
            wonLbl.isHidden = false
            currentTitle.text = "X"
            currentTitle.textColor = .green
            horTwo.isHidden = false
            smile.isHidden = false
            smile.image = UIImage(named: "happySmile")
        }else if
            fifthTitle == b && fourthTitle == b && sixthTitle == b {
            for btn in btns {
                btn.isEnabled = false
            }
            wonLbl.isHidden = false
            currentTitle.text = "O"
            currentTitle.textColor = .green
            horTwo.isHidden = false
            smile.isHidden = false
            smile.image = UIImage(named: "happySmile")
        }else if
            ninthTitle == a && sixthTitle == a && thirdTitle == a {
            for btn in btns {
                btn.isEnabled = false
            }
            wonLbl.isHidden = false
            currentTitle.text = "X"
            currentTitle.textColor = .green
            vertThree.isHidden = false
            smile.isHidden = false
            smile.image = UIImage(named: "happySmile")
        }else if
            ninthTitle == b && sixthTitle == b && thirdTitle == b {
            for btn in btns {
                btn.isEnabled = false
            }
            wonLbl.isHidden = false
            currentTitle.text = "O"
            currentTitle.textColor = .green
            vertThree.isHidden = false
            smile.isHidden = false
            smile.image = UIImage(named: "happySmile")
        }else if
            ninthTitle == a && eightthTitle == a && seventhTitle == a {
            for btn in btns {
                btn.isEnabled = false
            }
            wonLbl.isHidden = false
            currentTitle.text = "X"
            currentTitle.textColor = .green
            horThree.isHidden = false
            smile.isHidden = false
            smile.image = UIImage(named: "happySmile")
        }else if
            ninthTitle == b && eightthTitle == b && seventhTitle == b {
            for btn in btns {
                btn.isEnabled = false
            }
            wonLbl.isHidden = false
            currentTitle.text = "O"
            currentTitle.textColor = .green
            horThree.isHidden = false
            smile.isHidden = false
            smile.image = UIImage(named: "happySmile")
        }
        else if firstTitle != "" && secondTitle != "" && thirdTitle != "" && fourthTitle != "" && fifthTitle != "" && sixthTitle != "" && seventhTitle != "" && eightthTitle != "" && ninthTitle != ""{
            smile.isHidden = false
            smile.image = UIImage(named: "sadSmile")
            wonLbl.isHidden = false
            wonLbl.text = "won"
            currentTitle.text = "Nobody"
            currentTitle.textColor = .red
            wonLbl.textColor = .red
        }
    }
    
}
