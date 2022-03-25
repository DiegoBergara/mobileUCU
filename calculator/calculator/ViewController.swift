//
//  ViewController.swift
//  calculator
//
//  Created by Diego Bergara on 17/3/22.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var display: UILabel!
    
    private var currentValue: Int = 0
    
    private var total: Int = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        display.text = String(total)
    }
    
    func onNumberTouch(_ num: Int) -> Void {
        let displayAfterTouch = String(currentValue) + String(num)
        currentValue = Int(displayAfterTouch) ?? 0
        display.text = displayAfterTouch
    }
   
    @IBAction func button1(_ sender: Any) {
    }
    @IBAction func button2(_ sender: Any) {
    }
    @IBAction func button3(_ sender: Any) {
    }
    @IBAction func button4(_ sender: Any) {
    }
    @IBAction func button5(_ sender: Any) {
    }
    @IBAction func button6(_ sender: Any) {
    }
    @IBAction func button7(_ sender: Any) {
    }
    @IBAction func button8(_ sender: Any) {
    }
    @IBAction func button9(_ sender: Any) {
    }
    @IBAction func buttonAdd(_ sender: Any) {
    }
    @IBAction func buttonMult(_ sender: Any) {
    }
    @IBAction func buttonSub(_ sender: Any) {
    }
    @IBAction func buttonDiv(_ sender: Any) {
    }
    @IBAction func buttonResult(_ sender: Any) {
    }
    
}

