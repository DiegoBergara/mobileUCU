//
//  ViewController.swift
//  NavigationTest
//
//  Created by Diego Bergara on 21/4/22.
//

import UIKit

class ViewController: UIViewController {
    
    static let goToFirstPageSegue = "goToFirstPageSegue"

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func startNavigationAction(_ sender: Any) {
        performSegue(withIdentifier: Self.goToFirstPageSegue, sender: nil)
    }
    
}

