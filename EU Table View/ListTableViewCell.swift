//
//  ListTableViewCell.swift
//  EU Table View
//
//  Created by Chris Bond on 2/24/22.
//

import UIKit

protocol ListTableViewCellDelegate: class {
    func euroButtonToggled(sender: ListTableViewCell)
}

class ListTableViewCell: UITableViewCell {

        
    @IBOutlet weak var euroButton: UIButton!
    @IBOutlet weak var countryLabel: UILabel!
    @IBOutlet weak var capitalLabel: UILabel!
    
    weak var delegate: ListTableViewCellDelegate?
    
    var nation: Nation! {
        didSet {
            countryLabel.text = nation.country
            capitalLabel.text = "Capital \(nation.capital)"
            euroButton.isSelected = nation.usesEuro
        }
    }
    
    @IBAction func EuroTapped(_ sender: UIButton) {
        delegate?.euroButtonToggled(sender: self)
    }
    
    
}
