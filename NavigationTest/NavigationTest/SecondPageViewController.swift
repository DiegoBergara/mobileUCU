//
//  SecondPageViewController.swift
//  NavigationTest
//
//  Created by Diego Bergara on 21/4/22.
//

import UIKit

class SecondPageViewController: UIViewController {
    
    static let id = "SecondPageViewController"
    
    static let goBackToFirstPageSegue = "goBackToFirstPageSegue"
    
    static let presentModal = "presentModalSegue"
    
    var countValue = 1
    
    @IBOutlet weak var countLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        countLabel.text = "\(countValue)"
}
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard segue.identifier == Self.goBackToFirstPageSegue,
              let viewController = segue.destination as? FirstPageViewController else {
                  return
              }
        viewController.countValue = self.countValue + 1
    }
    
    @IBAction func addAction(_ sender: Any) {
        if countValue >= 5 {
            performSegue(withIdentifier: Self.presentModal, sender: nil)
        } else {
            performSegue(withIdentifier: Self.goBackToFirstPageSegue, sender: nil)
        }
        
    }
}
