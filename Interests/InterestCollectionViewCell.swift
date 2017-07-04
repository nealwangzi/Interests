//
//  InterestCollectionViewCell.swift
//  Interests
//
//  Created by neal on 2017/7/3.
//  Copyright © 2017年 Cloudoc. All rights reserved.
//

import UIKit

class InterestCollectionViewCell: UICollectionViewCell {
    @IBOutlet weak var featuredImageView: UIImageView!
    
    @IBOutlet weak var titleLabel: UILabel!
    
    var interest:Interest! {
    
        didSet {
            updateUI()
        }
    }
    
    fileprivate func updateUI() {
        titleLabel.text = interest.title
        featuredImageView.image = interest.featuredImage
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        self.layer.cornerRadius = 8.0
        self.clipsToBounds = true
    }
}
