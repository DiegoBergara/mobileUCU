//
//  NumberTableViewCell.swift
//  TableviewExample
//
//  Created by Diego Bergara on 7/4/22.
//

import UIKit

protocol NumberTableViewCellDelegate {
    func didTapAddButton(indexPath: IndexPath?)
}

class NumberTableViewCell: UITableViewCell {
    
    var delegate : NumberTableViewCellDelegate?
    
    var indexPath : IndexPath?

    @IBOutlet weak var mainLabel: UILabel!
    
    static let id = "NumberTableViewCell"
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    @IBAction func buttonAction(_ sender: Any) {
        if let indexPath = indexPath {
            delegate?.didTapAddButton(indexPath: indexPath)
        }
        
    }
    
    
}
