//
//  FirstPageViewController.swift
//  NavigationTest
//
//  Created by Diego Bergara on 21/4/22.
//

import UIKit

class FirstPageViewController: UIViewController {
    
    static let id = "FirstPageViewController"
    
    static let goToSecondPageSegue = "goToSecondPageSegue"
    
    var countValue = 0
    
    @IBOutlet weak var countLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        countLabel.text = "\(countValue)"
 }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard segue.identifier == Self.goToSecondPageSegue,
              let viewController = segue.destination as? SecondPageViewController else {
                  return
              }
        viewController.countValue = self.countValue + 1
    }
    
    @IBAction func addAction(_ sender: Any) {
        performSegue(withIdentifier: Self.goToSecondPageSegue, sender: nil)
    }
    
}
