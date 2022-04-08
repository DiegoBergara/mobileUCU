//
//  ViewController.swift
//  TableviewExample
//
//  Created by Diego Bergara on 6/4/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    let names = ["Diego DiegoDiegoDiegoDiegoDiegoDiego DiegoDiegoDiegoDiegoDiegoDiego", "Juan", "Francisco", "Rocío", "Ana", "Nacho","Jorge", "Rossana", "Mili", "Nico", "Bruno", "Rodrigo", "Dani","Diego", "Juan", "Francisco", "Rocío", "Ana", "Nacho","Jorge", "Rossana", "Mili", "Nico", "Bruno", "Rodrigo", "Dani", "Juan", "Francisco", "Rocío", "Ana", "Nacho","Jorge", "Rossana", "Mili", "Nico", "Bruno", "Rodrigo", "Dani"]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        tableView.delegate = self
        tableView.dataSource = self
        
        tableView.register(UINib(nibName: NumberTableViewCell.id, bundle: nil), forCellReuseIdentifier: NumberTableViewCell.id)
    }
}

extension ViewController: UITableViewDelegate, UITableViewDataSource, NumberTableViewCellDelegate {
    func didTapAddButton(indexPath: IndexPath?) {
        print(indexPath?.row)
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return names.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: NumberTableViewCell.id) as! NumberTableViewCell
        let name = names[indexPath.row]
        cell.delegate = self
        cell.indexPath = indexPath
        cell.mainLabel.text = "Hi, \(name)!"
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("the \(indexPath.row) row was selected")
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableView.automaticDimension
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return "Names"
    }
    
}
