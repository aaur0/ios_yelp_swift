//
//  FiltersCell.swift
//  Yelp
//
//  Created by Anand Gupta on 9/19/15.
//  Copyright © 2015 Timothy Lee. All rights reserved.
//

import UIKit

@objc protocol FiltersCellDelegate {
    optional func filtersCell(filtersCell:FiltersCell, didChangeValue value: Bool)
}

class FiltersCell: UITableViewCell {

    @IBOutlet weak var optionSwitch: UISwitch!
    @IBOutlet weak var filterLabel: UILabel!
    
    weak var delegate: FiltersCellDelegate?
    
    override func awakeFromNib() {
        super.awakeFromNib()
        optionSwitch.addTarget(self, action: "switchValueChanged", forControlEvents: UIControlEvents.ValueChanged)
    }
    
    func switchValueChanged(){
        delegate?.filtersCell?(self, didChangeValue: optionSwitch.on)        
    }
    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
    }

}
