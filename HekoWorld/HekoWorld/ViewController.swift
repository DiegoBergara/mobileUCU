//
//  ViewController.swift
//  HekoWorld
//
//  Created by Diego Bergara on 17/3/22.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var countLabel: UILabel!
    
    private var total = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    func addToTotal(_ num: Int) -> Void {
        let partialResult = total + num
        total = partialResult
        countLabel.text = String(total)
    }
    
    func multToTotal(_ num: Int) -> Void {
        let partialResult = total * num
        total = partialResult
        countLabel.text = String(total)
    }
    
    func resetTotal() -> Void {
        total = 0
        countLabel.text = String(total)
    }

    @IBAction func onAdd(_ sender: Any) {
        addToTotal(1)
    }
    
    @IBAction func onClear(_ sender: Any) {
        resetTotal()
    }
    
    @IBAction func onDouble(_ sender: Any) {
        multToTotal(2)
    }
    
    @IBAction func onX10(_ sender: Any) {
        multToTotal(10)
    }
}

