//
//  ViewController.swift
//  ApirequestExample
//
//  Created by Diego Bergara on 11/5/22.
//

import UIKit

class ViewController: UIViewController {
    
    static let ApiUrl: String = "https://animechan.vercel.app/api/quotes/anime"
    
    let Api: APIClient = APIClient.shared

    @IBOutlet weak var queryTextField: UITextField!
    @IBOutlet weak var resultDataLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func getButtonAction(_ sender: Any) {
        if let text: String = queryTextField.text {
            self.Api.request(urlString: Self.ApiUrl, method: APIClient.Method.get, params: ["title" : text]) { result in
                switch result{
                case .success(let data):
                    let dataString = String(data:data, encoding: .utf8)
                    self.resultDataLabel.text = dataString
                case .failure(let failure):
                    print(failure)
                }
            }
        }
    }
    
}

