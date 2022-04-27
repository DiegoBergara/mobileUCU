//
//  CollectionViewCell.swift
//  CollectionViewTableExample
//
//  Created by Diego Bergara on 20/4/22.
//

import UIKit

class CollectionViewCell: UICollectionViewCell {

    static let id = "CollectionViewCell"
    
    @IBOutlet weak var descriptionLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
}
