//
//  FinalNavigationViewController.swift
//  NavigationTest
//
//  Created by Diego Bergara on 27/4/22.
//

import UIKit

class FinalNavigationViewController: UIViewController {
    
    static let segueIdentifier = "goToFinalViewController"

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func navigateToLastView(_ sender: Any) {
        performSegue(withIdentifier: Self.segueIdentifier, sender: nil)
    }
    
}
