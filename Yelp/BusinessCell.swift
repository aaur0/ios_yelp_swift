//
//  BusinessCell.swift
//  Yelp
//
//  Created by Anand Gupta on 9/19/15.
//  Copyright © 2015 Timothy Lee. All rights reserved.
//

import UIKit

class BusinessCell: UITableViewCell {

    @IBOutlet weak var thumbnailImageView: UIImageView!
    @IBOutlet weak var ratingsImageView: UIImageView!

    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var distanceLabel: UILabel!
    @IBOutlet weak var reviewCountLabel: UILabel!
    @IBOutlet weak var categoriesLabel: UILabel!
    @IBOutlet weak var addressLabel: UILabel!

    var business : Business! {
        didSet {
            thumbnailImageView.setImageWithURL(business.imageURL)
            ratingsImageView.setImageWithURL(business.ratingImageURL)
            nameLabel.text = business.name
            distanceLabel.text = business.distance
            reviewCountLabel.text = "\(business.reviewCount!) reviews"
            categoriesLabel.text = business.categories
            addressLabel.text = business.address
        }
    }
    override func awakeFromNib() {
        super.awakeFromNib()
        thumbnailImageView.layer.cornerRadius = 3
        thumbnailImageView.clipsToBounds = true
        nameLabel.preferredMaxLayoutWidth = nameLabel.frame.size.width
    }
    override func layoutSubviews() {
        super.layoutSubviews()
        nameLabel.preferredMaxLayoutWidth = nameLabel.frame.size.width
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
